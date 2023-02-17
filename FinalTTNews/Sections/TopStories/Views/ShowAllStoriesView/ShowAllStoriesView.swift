//
//  ShowAllStoriesView.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import SwiftUI

struct ShowAllStoriesView: View {
    var storyData: StoryData

    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            List(storyData.results) { story in
                NavigationLink(
                    destination: StoryDetailsView(story: story),
                    label: {
                        StoryListItem(story: story)
                    })
            }
            .listStyle(InsetGroupedListStyle())
        })
        .navigationBarTitle(storyData.section, displayMode: .inline)
    }
}

struct ShowAllStoriesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ShowAllStoriesView(storyData: StoryData.exampleData)
        }
    }
}
