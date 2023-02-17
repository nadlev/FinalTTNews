//
//  Multimedia.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import Foundation

struct Multimedia: Codable, Hashable {
    var url: URL
    var format: String
    var type: String
    var caption: String
    var copyright: String
}

#if DEBUG
extension Multimedia {
    static let exampleData = Multimedia(
        url: URL(string: "https://static01.nyt.com/images/2021/05/02/arts/02opening-web-fleming/merlin_186800073_542d4918-ef06-4c59-a5d9-09139758d612-superJumbo.jpg")!,
        format: "superJumbo",
        type: "image",
        caption: "Renée Fleming, center, introduces her accompanists Bill Frisell, left, and Christian McBride during a concert at the Shed.",
        copyright: "Sara Krulwich/The New York Times")
}
#endif
