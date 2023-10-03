//
//  ContentView.swift
//  seventeen
//
//  Created by Alfredo Tochon on 10/2/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \Place.name) private var places: [ Place ]
    
    var body: some View {
        NavigationStack {
            List(places) { place in
                NavigationLink(value: place) {
                    HStack {
                        place.image
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(7)
                            .frame(width: 100, height: 100)
                        
                        Text(place.name)
                        
                        Spacer()
                        
                        if place.interested {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                                .padding(.trailing, 15)
                        }
                    }
                }
                
            }.navigationTitle("Places")
                .navigationDestination(for: Place.self) { place in
                    MapViewT(place: place)
                }
        }
//        .task {
//            for place in SampleTrip.places {
//                modelContext.insert(place)
//            }
//        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Place.self)
}
