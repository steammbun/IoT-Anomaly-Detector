//
//  ContentView.swift
//  IoT Anomaly Detector
//
//  Created by Steven Khuu on 9/30/21.
//
import UserNotifications
import SwiftUI
import Charts

class UserData : ObservableObject {
    private init() {}
    static let shared = UserData()

    @Published var isSignedIn : Bool = false
}

struct Device: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
}

struct ContentView: View {
    @ObservedObject private var userData: UserData = .shared
    
    var body: some View {
        ZStack {
            if (userData.isSignedIn) {
            NavigationView {
                VStack {
                    List {
                        NavigationLink(destination: DeviceDataView()){
                            TestDeviceRow()
                        }
                    }
                }
                        .navigationTitle("Devices")
                        .navigationBarItems(leading: SignOutButton())
                        .onAppear {
                            UINavigationBarAppearance()
                                .setColor(title: .white, background: .orange)
                        }
                }
            } else {
                
                SignInButton()
            }
        }
    }
}

// each devices own detailed view (currently holding 'TestData')
struct DeviceDataView: View {
    var body: some View {
        TabView {
            TestDetailViewTab1()
                .navigationBarTitleDisplayMode(.inline)
            .tabItem {
                Label("Temperature", systemImage: "thermometer")
            }
            
            TestDetailViewTab3()
            .tabItem {
                Label("Sound", systemImage: "speaker.wave.3")
            }
            
            TestDetailViewTab2()
            .tabItem {
                Label("Anomaly", systemImage: "exclamationmark.triangle")
            }
        }
    }
}

struct TestDetailViewTab1: View {

    var dataP: [ChartDataEntry] = []

    @State var selection: String = "Temperature"
    var body: some View{
        VStack{
            Text("Temperature")
                .font(.title)
            VStack {
                let dataP = makeDataPoint()

                DeviceDataLineChart(entriesIn: dataP)
                    .frame(height: 400)
                    .padding(.horizontal)
                Spacer()
                    .frame(height: 75)
            }
            .navigationTitle("M5 Stack")
        }
    }
    
    func makeDataPoint() -> [ChartDataEntry] {
            
            var points: [ChartDataEntry] = []
            var writeList = deviceList.sorted {
                $0.timestamp ?? 0 < $1.timestamp ?? 0
            }
        
            for i in 0..<writeList.count {
                let time = (writeList[i].timestamp ?? 0) - (writeList[0].timestamp ?? 0)
                let point = ChartDataEntry(x: (Double(time/600)), y: Double(writeList[i].temperature ?? 0))
                points.append(point)
            }
            
            return points
        }
}

struct TestDetailViewTab3: View {
    var dataP: [ChartDataEntry] = []
    @State var selection: String = "Temperature"
    var body: some View{
        VStack{
            Text("Sound")
                .font(.title)
                let dataP = makeSoundDataPoint()

            SoundDataLineChart(entriesIn: dataP)
                .frame(height: 400)
                .padding(.horizontal)
                
            Spacer()
                .frame(height: 75)
            
        }
    }
    
    func makeSoundDataPoint() -> [ChartDataEntry] {
            
            var points: [ChartDataEntry] = []
            var writeList = deviceList.sorted {
                $0.timestamp ?? 0 < $1.timestamp ?? 0
            }
            for i in 0..<writeList.count {
                let time = (writeList[i].timestamp ?? 0) - (writeList[0].timestamp ?? 0)
                let point = ChartDataEntry(x: (Double(time)/600), y: Double(writeList[i].sound ?? 0))
                points.append(point)
            }
            
            return points
        }
}

struct TestDetailViewTab2: View {
    @State private var selection: String = "Temperature"
    var body: some View{
        VStack{
            Spacer()
                .frame(height: 25)
            Text("Anomaly")
                .font(.title)
            Picker(
                selection: $selection,
                label:
                    HStack{
                        Text("Data Type:")
                        Text(selection)
                    }
                ,
                content: {
                Text("Temperature").tag("Temperature")
                Text("Sound").tag("Sound")
            })
                .pickerStyle(MenuPickerStyle())
            
            AnomalyDataLineChart(entriesIn: makeAnomalyDataPoint(selection))
                    .frame(height: 375)
                    .padding(.horizontal)
                
            Spacer()
                .frame(height: 100)
            
        }

    }
    
    func makeAnomalyDataPoint(_ selection: String) -> [ChartDataEntry] {
        var points: [ChartDataEntry] = []
        var sumList = deviceList.sorted {
            $0.timestamp ?? 0 < $1.timestamp ?? 0
        }
        
        if(selection == "Temperature"){
            var writeList = tempAnomalyList.sorted {
                $0.timestamp ?? 0 < $1.timestamp ?? 0
            }
        
            for i in 0..<writeList.count {
                let time = (writeList[i].timestamp ?? 0) - (sumList[0].timestamp ?? 0)
                let point = ChartDataEntry(x: (Double(time/600)), y: Double(writeList[i].temperature ?? 0))
                points.append(point)
            }
            return points
        }
        else if(selection == "Sound"){
            var writeList = soundAnomalyList.sorted {
                $0.timestamp ?? 0 < $1.timestamp ?? 0
            }
            
            for i in 0..<writeList.count {
                let time = (writeList[i].timestamp ?? 0) - (sumList[0].timestamp ?? 0)
                let point = ChartDataEntry(x: (Double(time/600)), y: Double(writeList[i].sound ?? 0))
                points.append(point)
            }
            return points
        }
        return points
    }
}

struct TestDeviceRow: View {
    var body: some View{
        HStack {
            Image(systemName: "cube") // SF symbol
            Text("M5 Stack")
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
        }
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
        .background(
            Image("LogInPage")
        )
    }
}

struct SignOutButton : View {
    var body: some View {
        Button(action: { Backend.shared.signOut() }) {
                Text("Sign Out")
        }
    }
}

extension UINavigationBarAppearance {
    func setColor(title: UIColor? = nil, background:UIColor? = nil){
        configureWithTransparentBackground()
        if let titleColor = title {
            largeTitleTextAttributes = [.foregroundColor: titleColor ]
            titleTextAttributes = [.foregroundColor: titleColor ]
        }
        backgroundColor = background
        UINavigationBar.appearance().scrollEdgeAppearance = self
        UINavigationBar.appearance().standardAppearance = self
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
