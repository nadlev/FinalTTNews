//
//  NetworkError.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import Foundation

enum NetworkError: Error {
    case incorrectURL
    case noData
    case decodingError
}
