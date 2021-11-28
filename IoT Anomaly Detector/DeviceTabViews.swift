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
        
        VStack {
            let start = CFAbsoluteTimeGetCurrent()
            let dataP = makeDataPoint()

            DeviceDataLineChart(entriesIn: dataP)
                .frame(height: 300)
                .padding(.horizontal)
            let diff = CFAbsoluteTimeGetCurrent() - start
            let _ = print("Temperature took \(diff) seconds")
            let min = String(format: "Min Value: %.2f (F)", getMin())
            let max = String(format: "Max Value: %.2f (F)", getMax())
            let avg = String(format: "Avg Value: %.2f (F)", getAvg())
            
            List{
                Text("\(min)")
                Text("\(max)")
                Text("\(avg)")
            }
            .listStyle(.grouped)
        }
        .navigationTitle("M5 Stack")
    }
    func getAvg() -> Double {
        var calcAvg = 0.0
        for i in 0..<deviceList.count {
            calcAvg += deviceList[i].temperature ?? 0
        }
        calcAvg = (calcAvg / Double(deviceList.count))
        return calcAvg
    }
    
    func getMin() -> Double {
        var calcMin = 99999.9
        for i in 0..<deviceList.count {
            if(deviceList[i].temperature ?? 0 < calcMin){
                calcMin = deviceList[i].temperature ?? 0
            }
        }
        return calcMin
    }
    
    func getMax() -> Double {
        var calcMax = 0.0
        for i in 0..<deviceList.count {
            if(deviceList[i].temperature ?? 0 > calcMax){
                calcMax = deviceList[i].temperature ?? 0
            }
        }
        return calcMax
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
            let start = CFAbsoluteTimeGetCurrent()
            let dataP = makeSoundDataPoint()

            SoundDataLineChart(entriesIn: dataP)
                .frame(height: 300)
                .padding(.horizontal)
            let diff = CFAbsoluteTimeGetCurrent() - start
            let _ = print("Sound took \(diff) seconds")
            let min = String(format: "Min Value: %d (dB)", getMin())
            let max = String(format: "Max Value: %d (dB)", getMax())
            let avg = String(format: "Avg Value: %d (dB)", getAvg())
            
            List{
                Text("\(min)")
                Text("\(max)")
                Text("\(avg)")
            }
            .listStyle(.grouped)
        }
    }
    
    func getAvg() -> Int {
        var calcAvg = 0
        for i in 0..<deviceList.count {
            calcAvg += deviceList[i].sound ?? 0
        }
        calcAvg = (calcAvg / deviceList.count)
        return calcAvg
    }
    
    func getMin() -> Int {
        var calcMin = 99999
        for i in 0..<deviceList.count {
            if(deviceList[i].sound ?? 0 < calcMin){
                calcMin = deviceList[i].sound ?? 0
            }
        }
        return calcMin
    }
    
    func getMax() -> Int {
        var calcMax = 0
        for i in 0..<deviceList.count {
            if(deviceList[i].sound ?? 0 > calcMax){
                calcMax = deviceList[i].sound ?? 0
            }
        }
        return calcMax
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
            let start = CFAbsoluteTimeGetCurrent()
            AnomalyDataLineChart(entriesIn: makeAnomalyDataPoint(selection))
                    .frame(height: 300)
                    .padding(.horizontal)
            let diff = CFAbsoluteTimeGetCurrent() - start
            let _ = print("Anomaly took \(diff) seconds")
            let tempCount = String(format: "Temp Count: %d", getTempCount())
            let soundCount = String(format: "Sound Count: %d", getSoundCount())
            List{
                Text("\(tempCount)")
                Text("\(soundCount)")
            }
            .listStyle(.grouped)
            
        }
    }
    
    func getTempCount() -> Int {
        var tempCount = 0
        tempCount = tempAnomalyList.count
        return tempCount
    }
    
    func getSoundCount() -> Int {
        var soundCount = 0
        soundCount = soundAnomalyList.count
        return soundCount
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
