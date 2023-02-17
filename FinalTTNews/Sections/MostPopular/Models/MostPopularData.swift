//
//  MostPopularData.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import Foundation

struct MostPopularData: Codable {
    let status: String
    let results: [MostPopularArticle]
}
