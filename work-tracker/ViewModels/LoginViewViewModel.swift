//
//  LoginViewViewModel.swift
//  work-tracker
//
//  Created by Benjamin Kubinec on 09/02/2024.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            
            errorMessage = "Fill in all fields."
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Enter a valid email."
            return false
        }
        return true
    }
}
