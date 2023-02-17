//
//  MediaView.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import SwiftUI

struct MediaView: View {
    var media: [Media]

    var body: some View {
        VStack(alignment: .leading) {
            Divider()

            ScrollView(.vertical, showsIndicators: true, content: {
                ForEach(media, id: \.self) {  mediaItem in
                    VStack {
                        Text(mediaItem.caption)
                        RemoteImage(url: mediaItem.mediaMetadata.last!.url.absoluteString)
                        HStack {
                            Spacer()
                            Text(mediaItem.copyright)
                                .foregroundColor(.secondary)
                        }
                    }
                    .multilineTextAlignment(.center)
                }
            })
        }
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView(media: [Media.exampleData])
            .previewLayout(.sizeThatFits)
    }
}
