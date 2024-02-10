//
//  Extentions.swift
//  work-tracker
//
//  Created by Benjamin Kubinec on 10/02/2024.
//

import Foundation

extension Encodable {
    
    func asDIctionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
