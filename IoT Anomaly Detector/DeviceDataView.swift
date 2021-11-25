//
//  DeviceDataView.swift
//  IoT Anomaly Detector
//
//  Created by David Hebert on 11/24/21.
//
import SwiftUI

// each devices own detailed view (currently only holding 'DeviceData')
struct DeviceDataView: View {
    var body: some View {
        TabView {
            DeviceDataTemperatureTabView()
                .navigationBarTitleDisplayMode(.inline)
            .tabItem {
                Label("Temperature", systemImage: "thermometer")
            }
            
            DeviceDataSoundTabView()
            .tabItem {
                Label("Sound", systemImage: "speaker.wave.3")
            }
            
            DeviceDataAnomalyTabView()
            .tabItem {
                Label("Anomaly", systemImage: "exclamationmark.triangle")
            }
        }
    }
}

struct DeviceDataView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceDataView()
    }
}
