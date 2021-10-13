//
//  TestData.swift
//  IoT Anomaly Detector
//
//  Created by Steven Khuu on 10/8/21.
//

import Foundation

struct TestData: Identifiable {
    let id = UUID()
    let name: String
    let device: String
    let reading: Int
    let time: Int

}
