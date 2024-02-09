//
//  LoginView.swift
//  work-tracker
//
//  Created by Benjamin Kubinec on 09/02/2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    Circle()
                        .foregroundColor(.mint)
                        .frame(width: 500, height: 500)
                        .position(x: 650, y: 120)
                    Circle()
                        .foregroundColor(.mint)
                        .frame(height: 250)
                        .offset(x: -100, y: 340)
                    Circle()
                        .foregroundColor(.mint)
                        .frame(height: 500)
                        .offset(x: 100, y: 300)
                }
                Text("Work Tracker")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                    .offset(y: -220)
            }
            .frame(width: UIScreen.main.bounds.width * 3)
            .offset(y: -100)
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
