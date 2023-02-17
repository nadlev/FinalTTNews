//
//  LoadingState.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import Foundation

enum LoadingState: Equatable {
    case idle
    case loading
    case failed(NetworkError)
    case success
}
