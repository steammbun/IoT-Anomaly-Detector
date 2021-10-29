//
//  ContentView.swift
//  IoT Anomaly Detector
//
//  Created by Steven Khuu on 9/30/21.
//
import UserNotifications
//import SwiftUICharts
import SwiftUI

// class Test
/*
class Test : Identifiable, ObservableObject {
    var id : String
    var name : String?
    var device : String?
    var reading : Int?
    var time : Int?
    
    init(id: String, name: String? = nil, device: String? = nil, reading: Int? = nil, time: Int? = nil) {
        self.id = id
        self.name = name
        self.device = device
        self.reading = reading
        self.time = time
    }
    
    convenience init(from data: TestData) {
        self.init(id: data.id, name: data.name, device: data.device, reading: data.reading, time: data.time)
        
        
        
        // store API object for easy retrieval later
        self._data = data
    }
    
    fileprivate var _data : TestData?
    
    // access the privately stored NoteData or build one if we don't have one.
    var data : TestData {

        if (_data == nil) {
            _data = TestData(id: self.id,
                             name: self.name,
                             device: self.device,
                             reading: self.reading,
                             time: self.time)
        }

        return _data!
    }
    
}
*/
 

class UserData : ObservableObject {
    private init() {}
    static let shared = UserData()

    @Published var testDeviceList : DeviceData?
    @Published var isSignedIn : Bool = false
}

struct Device: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
    var healthy: Bool
    // device data []
}

struct ContentView: View {
    
    @ObservedObject private var userData: UserData = .shared
    
    let devices = [
        Device(name: "Device1", icon: "candybarphone", healthy: true),
        Device(name: "Device2", icon: "candybarphone", healthy: false),
        Device(name: "Device3", icon: "candybarphone", healthy: true),
    ]
    
    var body: some View {
        
        ZStack {
            if (userData.isSignedIn) {
            NavigationView {
                
                VStack {
                    Button(action: {
                        Backend.shared.createTestData()
                    }) {
                        Text("Create TestData entry")
                    }
                    Button(action: {
                        Backend.shared.getTestData()
                    }) {
                        Text("Retrieve TestData from API")
                    }
                    List {
                        NavigationLink(destination: TestDetailView()){
                            TestDeviceRow()
                        }
                    }
                    
                    /*List(devices) { device in
                        NavigationLink(destination: DetailView(device: device)){DeviceRow(device: device)
                        }
                    }*/
                    
                    /*List {
                        ForEach(userData.tests) { test in
                            Text((test.device ?? "") + " " + (test.name ?? ""))
                        }*/
                        /*
                        ForEach(testDataVM.testData) { testData in
                            Text((testData.device ?? "") + " " + (testData.name ?? ""))
                        }
                    }*/
                }
                        .toolbar {
                            Button(action: {
                                let content = UNMutableNotificationContent()
                                content.title = "Anomaly Alert"
                                content.subtitle = "Device #'s activity is abnormal"
                                content.sound = UNNotificationSound.default
                                
                                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                                UNUserNotificationCenter.current().add(request)
                            }) {
                                Image(systemName: "bell")
                            }
                        }
                        .navigationTitle("Devices")
                        .navigationBarItems(leading: SignOutButton())
                        .onAppear(perform: {
                            UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) {(_,_) in
                                
                            }
                        })
                }
                
            } else {
                
                SignInButton()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// each devices own detailed view (currently holding sample graph data)
struct TestDetailView: View {
    
    var body: some View {
        TabView {
            TestDetailViewTab1()
                .tabItem {
                    Label("Tab1", systemImage: "chart.xyaxis.line")
                }
            TestDetailViewTab2()
                .tabItem {
                    Label("Tab2", systemImage: "chart.xyaxis.line")
                }
        }
    }
}

struct TestDetailViewTab1: View {
    var body: some View{
        HStack{
            Text("Tab 1")
        }
    }
}
struct TestDetailViewTab2: View {
    var body: some View{
        HStack{
            Text("Tab 2")
        }
    }
}

struct DetailView: View {
    var device: Device
    
    var body: some View {
//        VStack {
//            Text(device.name).font(.title)
//        }
//      Spacer()
        VStack { // bar graph
            
            
            //BarChartView(dataPoints: makeDataPoint())
            Spacer()
        }
        
    }
    // return points
    /*func makeDataPoint() -> [DataPoint] {
        let highIntensity = Legend(color: .orange, label: "High Intensity", order: 5)
        let buildFitness = Legend(color: .yellow, label: "Build Fitness", order: 4)
        let fatBurning = Legend(color: .green, label: "Fat Burning", order: 3)
        let warmUp = Legend(color: .blue, label: "Warm Up", order: 2)
        let low = Legend(color: .gray, label: "Low", order: 1)
        
        //let limit = DataPoint(value: 130, label: "5", legend: fatBurning)
        
        var points: [DataPoint] = [
            .init(value: 1, label: "1", legend: low),
            ]
        
        for i in 0..<deviceList.count {
            let point = DataPoint(value: Double(deviceList[i].reading ?? 0), label: LocalizedStringKey(String(deviceList[i].time ?? 0)), legend: low)
            //var point = DataPoint(value: 1, label: "", legend: low)
            points.append(point)
        }
        return points
    }*/
    
}

struct TestDeviceRow: View {
    //var testDeviceList: [DeviceData]
    var body: some View{
        HStack {
            Image(systemName: "wrench.and.screwdriver")
            Text("Test Device")
        }
    }
    
}

struct DeviceRow: View {
    var device: Device
    
    var body: some View {
        HStack {
            Image(systemName: device.icon)
            Text(device.name)
            Spacer()
            if(device.healthy == false) {
            Image(systemName: "exclamationmark.triangle")
            }
        }
        //Label(
          //  title: { Text(device.name) },
           // icon: { Image(systemName: device.icon).foregroundColor(.black) }
            //)
        //.listRowBackground(Color.white)
    }
}

struct SignInButton: View {
    var body: some View {
        Button(action: { Backend.shared.signIn() }){
            HStack {
                Image(systemName: "person.fill")
                    .scaleEffect(1.5)
                    .padding()
                Text("Sign In")
                    .font(.largeTitle)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(30)
        }
    }
}

struct SignOutButton : View {
    var body: some View {
        Button(action: { Backend.shared.signOut() }) {
                Text("Sign Out")
        }
    }
}

// currently unused
struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.orange,Color.white
        ]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}
