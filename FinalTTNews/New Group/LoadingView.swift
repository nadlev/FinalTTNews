//
//  LoadingView.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: Color("AccentColor")))
            .scaleEffect(3)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
