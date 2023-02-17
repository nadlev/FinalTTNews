//
//  StoryListItem.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import SwiftUI

struct StoryListItem: View {
    var story: Story

    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            HStack {
                Text(story.title)
                    .font(.title2)
                    .fontWeight(.medium)
            }

            Text(story.abstract)
                .font(.body)
        }
    }
}

struct StoryListItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryListItem(story: Story.exampleData)
            .previewLayout(.sizeThatFits)
    }
}
