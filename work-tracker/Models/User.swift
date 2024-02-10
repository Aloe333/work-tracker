//
//  User.swift
//  work-tracker
//
//  Created by Benjamin Kubinec on 09/02/2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval  
}
