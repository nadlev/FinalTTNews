//
//  Section.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import Foundation

enum Section: String, CaseIterable, Identifiable {
    case arts
    case automobiles
    case books
    case business
    case fashion
    case food
    case health
    case home
    case insider
    case magazine
    case movies
    case nyregion
    case obituaries
    case opinion
    case politics
    case realestate
    case science
    case sports
    case sundayreview
    case technology
    case theater
    case tmagazine = "t-magazine"
    case travel
    case upshot
    case us
    case world

    var id: String { self.rawValue }
}
