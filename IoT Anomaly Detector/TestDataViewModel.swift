//
//  TestDataViewModel.swift
//  IoT Anomaly Detector
//
//  Created by Steven Khuu on 10/8/21.
//

import Foundation
import SwiftUI

class TestDataViewModel: NSObject, ObservableObject {
    
    @Published var testData: [TestData]
        = [
            .init(name: "temperature", device: "fan", reading: 65, time: 1)
            .init(name: "temperature", device: "fan", reading: 66, time: 2)
            
        
        
        ]
    
    override init() {
        super.init()
    }
    
}
