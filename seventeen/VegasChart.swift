//
//  VegasChart.swift
//  seventeen
//
//  Created by Alfredo Tochon on 10/3/23.
//

import SwiftUI
import Charts

struct SampleRating {
    let place: String
    let rating: Int //0..100
    
    static let ratings: [SampleRating] = [
        SampleRating(place: "Bellagio", rating: 88),
        SampleRating(place: "Paris", rating: 75),
        SampleRating(place: "Excalibur", rating: 33),
        SampleRating(place: "Treasure Island", rating: 99)
    ]
}

struct VegasChart: View {
    var body: some View {
        Chart(SampleRating.ratings, id: \.place) {
            rating in
            SectorMark(
                angle: .value("Ratings", rating.rating),
                innerRadius: .ratio(0.6),
                angularInset: 1
            )
            .foregroundStyle(by: .value("Place", rating.place))
        }
        .padding()
        .frame(height: 500)
    }
}

#Preview {
    VegasChart()
}
