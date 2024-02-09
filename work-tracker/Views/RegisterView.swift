//
//  RegisterView.swift
//  work-tracker
//
//  Created by Benjamin Kubinec on 09/02/2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        HeaderView(title: "Register",
                   background: .red
        )
        .padding(.bottom, 75)
        
        Form {
            TextField("Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
            SecureField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            ButtonView(title: "Register", background: .red ) {
                // register
            }
        }
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
