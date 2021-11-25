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
                            M5DeviceRow()
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

// row that shows up on list of devices for the M5Stack
struct M5DeviceRow: View {
    var body: some View{
        HStack {
            Image(systemName: "cube") // from SF symbols
            Text("M5Stack")
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
