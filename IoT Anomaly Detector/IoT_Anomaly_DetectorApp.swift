//
//  IoT_Anomaly_DetectorApp.swift
//  IoT Anomaly Detector
//
//  Created by Steven Khuu on 9/30/21.
//

import SwiftUI

@main
struct IoT_Anomaly_DetectorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    // initialize Amplify
    let _ = Backend.initialize()

    return true
}
