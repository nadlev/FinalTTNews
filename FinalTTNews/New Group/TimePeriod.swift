//
//  Period.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import Foundation

enum Period: Int, CaseIterable, Identifiable {
    case daily = 1
    case weekly = 7
    case monthly = 30

    var id: Int { self.rawValue }
    var stringValue: String {
        let dayString = self.rawValue == 1 ? "day" : "days"
        return "\(self.rawValue) \(dayString)"
    }
}
