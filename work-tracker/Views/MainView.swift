//
//  ContentView.swift
//  work-tracker
//
//  Created by Benjamin Kubinec on 09/02/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            AnalyticsView()
        } else {
            LoginView() 
        }
    }
}

#Preview {
    MainView()
}
