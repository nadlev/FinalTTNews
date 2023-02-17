//
//  ArticleListItem.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import SwiftUI

struct ArticleListItem: View {
    var article: MostPopularArticle

    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            HStack {
                Text(article.title)
                    .font(.title2)
                    .fontWeight(.medium)
            }

            Text(article.abstract)
                .font(.body)
        }
    }
}

struct ArticleListItem_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListItem(article: MostPopularArticle.exampleData.first!)
            .previewLayout(.sizeThatFits)
    }
}
