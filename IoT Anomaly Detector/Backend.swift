//
//  Backend.swift
//  IoT Anomaly Detector
//
//  Created by Steven Khuu on 10/13/21.
//


import AmplifyPlugins
import UIKit
import Amplify

struct DeviceData: Decodable, Identifiable {
    let id = UUID()
    var pkID: String
    var device: String?
    var name: String?
    var reading: Int?
    var time: Int?
}

var deviceList: [DeviceData] = []

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
            self.createSubscription()
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
            self.cancelSubscription()
        }
    }

    // change our internal state, this triggers an UI update on the main thread
    func updateUserData(withSignInStatus status : Bool) {
        DispatchQueue.main.async() {
            let userData : UserData = .shared
            userData.isSignedIn = status
            
            /* only query test when user is signed in
            if status {
                        self.queryTest()
                    } else {
                        userData.tests = []
                    }
             */
        }
    }
    
    func createTestData() {
        let reading = Int.random(in: 1..<100);
        let time = Int.random(in: 1..<10000);
        let testData = TestData(name: "speed", device: "TestDevice", reading: reading, time: time)
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
    
    func getDevices() {
        
    }
    
    func getTestData() {
        let testId = "fridge7"
        //testId = "fridge7"
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
    
    func createSubscription() {
        subscription = Amplify.API.subscribe(request: .subscription(of: TestData.self, type:. onCreate), valueListener: {(subscriptionEvent) in
            switch subscriptionEvent {
            case .connection(let subscriptionConnectionState):
                print("Subscription connect state is \(subscriptionConnectionState)")
            case .data(let result):
                switch result {
                case .success(let createdTestData):
                    // create device data
                    DispatchQueue.main.async {
                        let userData : UserData = .shared
                        let readData: DeviceData = DeviceData(pkID: createdTestData.id, device: createdTestData.device, name: createdTestData.device, reading: createdTestData.reading, time: createdTestData.time)
                        deviceList.append(readData)
                        userData.testDeviceList.append(readData)
                        print("Successfully updated deviceList, num items: ", deviceList.count)
                        print("Successfully updated testDeviceList, num items: ", userData.testDeviceList.count)

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
    
    func cancelSubscription() {
        subscription?.cancel()
    }
    
    // query test
    /*
    func queryTest() {
            _ = Amplify.API.query(request: .list(TestData.self)) { event in
                switch event {
                case .success(let result):
                    switch result {
                    case .success(let testsData):
                        print("Successfully retrieved list of tests")
                        // convert an array of NoteData to an array of Note class instances
                        for n in testsData {
                            let test = Test.init(from: n)
                            DispatchQueue.main.async() {
                                UserData.shared.tests.append(test)
                            }
                        }
                    case .failure(let error):
                        print("Can not retrieve result : error  \(error.errorDescription)")
                    }
                case .failure(let error):
                    print("Can not retrieve Notes : error \(error)")
                }
            }
        }*/

}
