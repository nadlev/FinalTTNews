//
//  RemoteImage.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import SwiftUI

struct RemoteImage: View {
    private enum LoadState {
        case loading, success, failure
    }

    private class Loader: ObservableObject {
        var data = Data()
        var state = LoadState.loading

        init(url: String) {
            guard let parsedURL = URL(string: url) else {
                fatalError("Invalid URL: \(url)")
            }

            URLSession.shared.dataTask(with: parsedURL) { data, response, error in
                if let data = data, data.count > 0 {
                    self.data = data
                    self.state = .success
                } else {
                    self.state = .failure
                }

                DispatchQueue.main.async {
                    self.objectWillChange.send()
                }
            }.resume()
        }
    }

    @StateObject private var loader: Loader
    var failure: Image
    var size: CGSize?
    var aspectRatio: ContentMode

    var body: some View {
        if loader.state == .loading {
            ZStack {
                LoadingView()
            }
            .frame(width: 150, height: 250)
        } else {
            selectImage()
                .resizable()
                .aspectRatio(contentMode: aspectRatio)
                .frame(width: size?.width, height: size?.height)
                .clipped()
        }
    }

    init(url: String, failure: Image = Image(systemName: "multiply.circle"), size: CGSize? = nil, aspectRatio: ContentMode = .fill) {
        _loader = StateObject(wrappedValue: Loader(url: url))
        self.failure = failure
        self.size = size
        self.aspectRatio = aspectRatio
    }

    private func selectImage() -> Image {
        switch loader.state {
        case .failure:
            return failure
        default:
            if let image = UIImage(data: loader.data) {
                return Image(uiImage: image)
            } else {
                return failure
            }
        }
    }
}
