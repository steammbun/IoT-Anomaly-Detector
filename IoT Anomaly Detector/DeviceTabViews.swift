//
//  DeviceTabViews.swift
//  IoT Anomaly Detector
//
//  Created by David Hebert on 11/24/21.
//  Description: Tabs for each list of data using Charts by Daniel Gindi to visualize datapoints
//
//  link to repo: https://github.com/danielgindi/Charts
//

import SwiftUI
import Charts

struct DeviceDataTemperatureTabView: View {
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

struct DeviceDataSoundTabView: View {
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

struct DeviceDataAnomalyTabView: View {
    @State private var selection: String = "Temperature"
    var body: some View{
        VStack{
            Spacer()
                .frame(height: 25)
            Text("Anomaly")
                .font(.title)
            Picker( // picker to select which anomaly data to display
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

struct DeviceTabViews_Previews: PreviewProvider {
    static var previews: some View {
        DeviceDataTemperatureTabView()
    }
}
