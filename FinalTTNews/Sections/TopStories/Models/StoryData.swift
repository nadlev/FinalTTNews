//
//  StoryData.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import Foundation

struct StoryData: Codable, Hashable, Identifiable {
    let status: String
    let section: String
    let results: [Story]
    var id: String { section }
}

#if DEBUG
extension StoryData {
    static let exampleData = StoryData(
        status: "OK",
        section: "Arts",
        results: Array(repeating: Story.exampleData, count: 5))
}
#endif
