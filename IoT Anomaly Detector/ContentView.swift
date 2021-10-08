//
//  ContentView.swift
//  IoT Anomaly Detector
//
//  Created by Steven Khuu on 9/30/21.
//

import UserNotifications
import SwiftUICharts
import SwiftUI

struct Device: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
    var healthy: Bool
}

struct ContentView: View {
    let devices = [
        Device(name: "Device1", icon: "candybarphone", healthy: true),
        Device(name: "Device2", icon: "candybarphone", healthy: false),
    ]
    var body: some View {
        
        NavigationView {
            //ZStack {
                //BackgroundView()
                //VStack {
                    //Text("test")
                    List(devices) { device in
                        NavigationLink(destination: DetailView(device: device)){DeviceRow(device: device)
                        }
                        
                           
                    //}
                    //.padding()
                    
                    
                }
                    .navigationTitle("Devices")
                    .onAppear(perform: {
                        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) {(_,_) in
                            
                        }
                    })
                
            //}
        }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
            let highIntensity = Legend(color: .orange, label: "High Intensity", order: 5)
            let buildFitness = Legend(color: .yellow, label: "Build Fitness", order: 4)
            let fatBurning = Legend(color: .green, label: "Fat Burning", order: 3)
            let warmUp = Legend(color: .blue, label: "Warm Up", order: 2)
            let low = Legend(color: .gray, label: "Low", order: 1)

            let limit = DataPoint(value: 130, label: "5", legend: fatBurning)

            let points: [DataPoint] = [
                .init(value: 70, label: "1", legend: low),
                .init(value: 90, label: "2", legend: warmUp),
                .init(value: 91, label: "3", legend: warmUp),
                .init(value: 92, label: "4", legend: warmUp),
                .init(value: 130, label: "5", legend: fatBurning),
                .init(value: 124, label: "6", legend: fatBurning),
                .init(value: 135, label: "7", legend: fatBurning),
                .init(value: 133, label: "8", legend: fatBurning),
                .init(value: 136, label: "9", legend: fatBurning),
                .init(value: 138, label: "10", legend: fatBurning),
                .init(value: 150, label: "11", legend: buildFitness),
                .init(value: 151, label: "12", legend: buildFitness),
                .init(value: 150, label: "13", legend: buildFitness),
                .init(value: 136, label: "14", legend: fatBurning),
                .init(value: 135, label: "15", legend: fatBurning),
                .init(value: 130, label: "16", legend: fatBurning),
                .init(value: 130, label: "17", legend: fatBurning),
                .init(value: 150, label: "18", legend: buildFitness),
                .init(value: 151, label: "19", legend: buildFitness),
                .init(value: 150, label: "20", legend: buildFitness),
                .init(value: 160, label: "21", legend: highIntensity),
                .init(value: 159, label: "22", legend: highIntensity),
                .init(value: 161, label: "23", legend: highIntensity),
                .init(value: 158, label: "24", legend: highIntensity),
            ]

            BarChartView(dataPoints: points, limit: limit)
            Spacer()
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
    func createNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Anomaly Detected"
        content.subtitle = device.name
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let request = UNNotificationRequest(identifier: "IN-APP", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}
struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.orange,Color.white
        ]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}
