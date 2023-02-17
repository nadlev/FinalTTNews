//
//  FinalTTNewsApp.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import SwiftUI

@main
struct FinalTTNewsApp: App {
    @StateObject var mostPopularViewModel = MostPopularViewModel()
    @StateObject var topStoriesViewModel = TopStoriesViewModel()
    //@StateObject var bookmarksViewModel = BookmarksViewModel()

    @State private var selectedTab = 0

    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab,
                    content:  {
                        NavigationView {
                            MostPopularView()
                                .environmentObject(mostPopularViewModel)
                        }
                        .tag(0)
                        .tabItem {
                            Image(systemName: "books.vertical")
                            Text("Popular Articles")
                        }

                        NavigationView {
                            TopStoriesView()
                                .environmentObject(topStoriesViewModel)
                        }
                        .tag(1)
                        .tabItem {
                            Image(systemName: "scroll")
                            Text("Top Stories")
                        }
                    }
            )
        }
    }
}
