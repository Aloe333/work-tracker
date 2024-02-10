//
//  RegisterView.swift
//  work-tracker
//
//  Created by Benjamin Kubinec on 09/02/2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        HeaderView(title: "Register",
                   background: .red
        )
        .padding(.bottom, 75)
        
        Form {
            TextField("Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("Email Address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            ButtonView(title: "Register", background: .red ) {
                viewModel.register()
            }
        }
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
