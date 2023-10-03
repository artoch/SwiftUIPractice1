//
//  MapViewT.swift
//  seventeen
//
//  Created by Alfredo Tochon on 10/3/23.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let placeOfInterest = CLLocationCoordinate2D(latitude: 36.1129, longitude: -115.1765)
}

struct MapViewT: View {
    
    @Bindable var place: Place
    
    @State private var position : MapCameraPosition
    
    @State private var showImagery = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
  
            Map(position: $position) {
                Annotation(place.interested ? "Place of interes" : "Not Interested", coordinate: place.location) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 7)
                            .fill(.ultraThickMaterial)
                            .stroke(.secondary, lineWidth: 5)
                        Image(systemName: place.interested  ? "face.smiling" : "hand.thumbsdown" )
                            .padding(3)
                    }
                    .onTapGesture {
                        place.interested.toggle()
                    }
                }
            }
            .mapStyle(showImagery ? .imagery(elevation: .realistic) : .standard)
            
            Button {
                showImagery.toggle()
            } label: {
                Image(systemName: showImagery ? "globe.americas.fill" : "globe.americas")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .padding(3)
                    .background(.thinMaterial)
                    .cornerRadius(7)
                    .shadow(radius: 3)
                    .padding()
            }
        }
    }
    
    init(place: Place) {
        self.place = place
        self._position = State(wrappedValue: .camera(MapCamera(
            centerCoordinate: place.location, distance: 100, heading: 250, pitch: 60
        )))
    }
}

#Preview {
    MapViewT(place: SampleTrip.places[0])
}
