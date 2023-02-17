//
//  SelectPeriodView.swift
//  FinalTTNews
//
//  Created by Надежда Левицкая on 2/16/23.
//

import SwiftUI


struct SelectPeriodView: View {
    @EnvironmentObject var mostPopularViewModel: MostPopularViewModel

    var body: some View {
        Picker("Period", selection: $mostPopularViewModel.selectedPeriod) {
            ForEach(Period.allCases) { period in
                Text(period.stringValue)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

struct SelectPeriodView_Previews: PreviewProvider {
    static var previews: some View {
        SelectPeriodView()
            .environmentObject(MostPopularViewModel())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
