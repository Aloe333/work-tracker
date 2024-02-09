//
//  HeaderView.swift
//  work-tracker
//
//  Created by Benjamin Kubinec on 09/02/2024.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let background: Color
    
    
    var body: some View {
        ZStack {
            VStack {
                Circle()
                    .foregroundColor(background)
                    .frame(height: 500)
                    .offset(y: -125)
                Circle()
                    .foregroundColor(background)
                    .frame(height: 100)
                    .offset(y: -125)
                    
            }
            Text(title)
                .font(.system(size: 50))
                .foregroundColor(.white)
                .bold()
                .offset(y: -75)
                .shadow(color: .white, radius: 2)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 250)
        
    }
    
}

#Preview {
    HeaderView(title: "Title",
               background: .blue
    )
}
