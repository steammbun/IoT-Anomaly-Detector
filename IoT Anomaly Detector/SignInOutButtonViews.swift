//
//  SignInOutButtonViews.swift
//  IoT Anomaly Detector
//
//  Created by Steven Khuu on 11/24/21.
//  Description: Sign In/Out Buttons for AWS Cognito
//
import SwiftUI

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

struct SignInOutButtonViews_Previews: PreviewProvider {
    static var previews: some View {
        SignInButton()
    }
}
