//
//  work_trackerApp.swift
//  work-tracker
//
//  Created by Benjamin Kubinec on 09/02/2024.
//

import FirebaseCore
import SwiftUI

@main
struct work_trackerApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
