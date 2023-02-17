//
//  MultimediaView.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import SwiftUI

struct MultimediaView: View {
    var multimedia: [Multimedia]

    var body: some View {
        if let mediaItem = multimedia.first {
            GeometryReader { geo in
                VStack(alignment: .leading, content: {
                    Divider()

                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack {
                            Text(mediaItem.caption)
                            RemoteImage(url: mediaItem.url.absoluteString, size: geo.size)
                            HStack {
                                Spacer()
                                Text(mediaItem.copyright)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .multilineTextAlignment(.center)
                    })
                })
            }
        } else {
            EmptyView()
        }
    }
}

struct MultimediaView_Previews: PreviewProvider {
    static var previews: some View {
        MultimediaView(multimedia: Array(repeating: Multimedia.exampleData, count: 5))
    }
}
