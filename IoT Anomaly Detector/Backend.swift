//
//  Backend.swift
//  IoT Anomaly Detector
//
//  Created by Steven Khuu on 10/13/21.
//

import AmplifyPlugins
import UIKit
import Amplify

// holds one row of device data read in from AppSync
struct DeviceData: Decodable, Identifiable {
    let id = UUID()             // id for iterating in Swift
    var devID: String?          // id from graphQL
    var devName: String?
    var sound: Int?
    var temperature: Double?
    var hvac: String?
    var occupancy: String?
    var sound_anomaly: String?  // boolean value for anomaly
    var temp_anomaly: String?   // boolean value for anomaly
    var timestamp: Int?         // UNIX time
    var dt: String?
}

// holds in data if row is a sound anomaly
struct SoundAnomalyData: Decodable, Identifiable {
    let id = UUID()
    var devID: String?
    var devName: String?
    var sound: Int?
    var temperature: Double?
    var hvac: String?
    var occupancy: String?
    var sound_anomaly: String?
    var timestamp: Int?
    var dt: String?
}

// holds in data if row is a temperature anomaly
struct TempAnomalyData: Decodable, Identifiable {
    let id = UUID()
    var devID: String?
    var devName: String?
    var sound: Int?
    var temperature: Double?
    var hvac: String?
    var occupancy: String?
    var temp_anomaly: String?
    var timestamp: Int?
    var dt: String?
}

// store the data structs in a list
var deviceList: [DeviceData] = []
var soundAnomalyList: [SoundAnomalyData] = []
var tempAnomalyList: [TempAnomalyData] = []

class Backend {
    var subscription: GraphQLSubscriptionOperation<TestData>?
    static let shared = Backend()
    static func initialize() -> Backend {
        return .shared
    }
    
    private init () {
      // initialize amplify
      do {
         try Amplify.add(plugin: AWSCognitoAuthPlugin())
         try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: AmplifyModels()))
         try Amplify.add(plugin: AWSS3StoragePlugin())
         try Amplify.configure()
         print("Initialized Amplify")
      } catch {
         print("Could not initialize Amplify: \(error)")
      }
        // listen to auth events.
        // see https://github.com/aws-amplify/amplify-ios/blob/master/Amplify/Categories/Auth/Models/AuthEventName.swift
        _ = Amplify.Hub.listen(to: .auth) { (payload) in
            switch payload.eventName {

            case HubPayload.EventName.Auth.signedIn:
                print("==HUB== User signed In, update UI")
                self.updateUserData(withSignInStatus: true)

            case HubPayload.EventName.Auth.signedOut:
                print("==HUB== User signed Out, update UI")
                self.updateUserData(withSignInStatus: false)

            case HubPayload.EventName.Auth.sessionExpired:
                print("==HUB== Session expired, show sign in UI")
                self.updateUserData(withSignInStatus: false)

            default:
                //print("==HUB== \(payload)")
                break
            }
        }
        // let's check if user is signedIn or not
         _ = Amplify.Auth.fetchAuthSession { (result) in
             do {
                 let session = try result.get()
        // let's update UserData and the UI
             self.updateUserData(withSignInStatus: session.isSignedIn)
             } catch {
                  print("Fetch auth session failed with error - \(error)")
            }
        }
    }
    // MARK: - User Authentication
    
    // signin with Cognito web user interface
    public func signIn() {
        _ = Amplify.Auth.signInWithWebUI(presentationAnchor: UIApplication.shared.windows.first!) { result in
            switch result {
            case .success(_):
                print("Sign in succeeded")
            case .failure(let error):
                print("Sign in failed \(error)")
            }
            
            //self.createSubscription()      // initialize subscription to API on user sign in
            self.listFetch()                 // fetch data from API on user sign in
        }
    }
    
    // signout
    public func signOut() {
        _ = Amplify.Auth.signOut() { (result) in
            switch result {
            case .success:
                print("Successfully signed out")
            case .failure(let error):
                print("Sign out failed with error \(error)")
            }
            //self.cancelSubscription()     // cancel subscription upon user sign out
        }
    }

    // change our internal state, this triggers an UI update on the main thread
    func updateUserData(withSignInStatus status : Bool) {
        DispatchQueue.main.async() {
            let userData : UserData = .shared
            userData.isSignedIn = status
        }
    }
    
    // test AppSync create query
    func createTestData() {
        let reading = Int.random(in: 1..<100);
        let time = Int.random(in: 1..<10000);
        //let testData = TestData(name: "speed", device: "TestDevice", reading: reading, time: time)
        let testData = TestData(sound: reading, temperature: Double(reading), hvac: "TEST", occupancy: "EMPTY", temp_anomaly: "FALSE", timestamp: time, dt: "11/10")
        Amplify.API.mutate(request: .create(testData)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let testData):
                    print("Successfully created the testData: \(testData)")
                case .failure(let graphQLError):
                    print("Failed to create graphql \(graphQLError)")
                }
            case .failure(let apiError):
                print("Failed to create a testData", apiError)
            }
        }
    }
    
    // query data from AppSync starting at a specific time
    func listFetch(){
        let testdata = TestData.keys
        let predicate = testdata.timestamp >= 1637524131 // specify timestamp to pull from
        Amplify.API.query(request: .paginatedList(TestData.self, where: predicate, limit: 289)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let testdatas):
                    print("Successfully retrieved list of TestDatas: \(testdatas) \(testdatas.count)")
                    for i in 0..<testdatas.count {
                        if(testdatas[i].temp_anomaly == "TRUE"){ // store as a temperature anomaly if true
                            let anomalyPoint = TempAnomalyData.init(devID: testdatas[i].devId, devName: testdatas[i].devName, sound: testdatas[i].sound, temperature: testdatas[i].temperature, hvac: testdatas[i].hvac, occupancy: testdatas[i].occupancy, temp_anomaly: testdatas[i].temp_anomaly, timestamp: testdatas[i].timestamp, dt: testdatas[i].dt)
                            tempAnomalyList.append(anomalyPoint)
                        }
                        if(testdatas[i].sound_anomaly == "TRUE"){ // store as a sound anomaly if true
                            let anomalyPoint = SoundAnomalyData.init(devID: testdatas[i].devId, devName: testdatas[i].devName, sound: testdatas[i].sound, temperature: testdatas[i].temperature, hvac: testdatas[i].hvac, occupancy: testdatas[i].occupancy, sound_anomaly: testdatas[i].sound_anomaly, timestamp: testdatas[i].timestamp, dt: testdatas[i].dt)
                            soundAnomalyList.append(anomalyPoint)
                        }
                        let point = DeviceData.init(devID: testdatas[i].devId, devName: testdatas[i].devName, sound: testdatas[i].sound, temperature: testdatas[i].temperature, hvac: testdatas[i].hvac, occupancy: testdatas[i].occupancy, sound_anomaly: testdatas[i].sound_anomaly, temp_anomaly: testdatas[i].temp_anomaly, timestamp: testdatas[i].timestamp, dt: testdatas[i].dt)
                        deviceList.append(point) // add all entries into deviceList
                    }
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }

    // test querying API with an ID
    func getTestData() {
        let testId = "testid"
        Amplify.API.query(request: .get(TestData.self, byId: testId)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let testData):
                    guard let testData = testData else {
                        print("Could not find testData")
                        return
                    }
                    print("Successfully retrieved testData: \(testData)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    // CURRENTLY UNUSED
    // creates a subscription that listens for 'create' mutations in the API and appends to deviceList
    /*
    func createSubscription() {
        subscription = Amplify.API.subscribe(request: .subscription(of: TestData.self, type: .onCreate), valueListener: {(subscriptionEvent) in
            switch subscriptionEvent {
            case .connection(let subscriptionConnectionState):
                print("Subscription connect state is \(subscriptionConnectionState)")
            case .data(let result):
                switch result {
                case .success(let createdTestData):
                    DispatchQueue.main.async {
                        let readData: DeviceData = DeviceData(devID: createdTestData.id, sound: createdTestData.sound, temperature: createdTestData.temperature, hvac: createdTestData.hvac, occupancy: createdTestData.occupancy, temp_anomaly: createdTestData.temp_anomaly, timestamp: createdTestData.timestamp, dt: createdTestData.dt)
                        deviceList.append(readData)
                        print("Successfully updated deviceList, num items: ", deviceList.count)
                    }
                    print("Successfully got testData from subscription: \(createdTestData)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            }
        }) { result in
            switch result {
            case .success():
                print("Subscription has been closed successfully")
            case .failure(let apiError):
                print("Subscription has terminated with \(apiError)")
            }
        }
    }
    */
    
    // end subscription on signout
    /*
    func cancelSubscription() {
        subscription?.cancel()
    }
    */
}
