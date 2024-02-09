//
//  LoginView.swift
//  work-tracker
//
//  Created by Benjamin Kubinec on 09/02/2024.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "Work Tracker",
                           background: .indigo
                )
                    .padding(.bottom, 75)
                
                //login form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password )
                        .textFieldStyle(DefaultTextFieldStyle())
                    //log in button
                    ButtonView(title: "Log In", background: .indigo ) {
                        // log in
                    }
                    
                }.frame(height: 250)
                
                //New Account
                VStack {
                    Text("Don't have an account yet?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                        .foregroundColor(.indigo)
                }.padding(.top, 75)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
