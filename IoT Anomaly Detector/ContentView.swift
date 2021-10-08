//
//  ContentView.swift
//  IoT Anomaly Detector
//
//  Created by Steven Khuu on 9/30/21.
//

import SwiftUICharts
import SwiftUI

struct Device: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
}

struct ContentView: View {
    let devices = [
        Device(name: "Device1", icon: "candybarphone"),
        Device(name: "Device2", icon: "candybarphone"),
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
        VStack { // line graph
            LineView(data: [12,22,6,1,2,17,2], title: device.name)
            Spacer()
        }
        
    }
    
}

struct DeviceRow: View {
    var device: Device
    
    var body: some View {
        Label(
            title: { Text(device.name) },
            icon: { Image(systemName: device.icon).foregroundColor(.black) }
            )
        //.listRowBackground(Color.white)
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
