//
//  TopStoriesView.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import SwiftUI

struct TopStoriesView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(Section.allCases.prefix(5)) { section in
                    StoriesScrollView(section: section)
                }
            }
        }
        .navigationBarTitle("Top Stories")
    }
}

struct TopStoriesView_Previews: PreviewProvider {
    static var previews: some View {
        TopStoriesView()
    }
}
