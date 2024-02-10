//
//  LoginView.swift
//  work-tracker
//
//  Created by Benjamin Kubinec on 09/02/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "Work Tracker",
                           background: .indigo
                )
                    .padding(.bottom, 75)
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                }
                //login form
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    //log in button
                    ButtonView(title: "Log In", background: .indigo ) {
                        viewModel.login()
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
