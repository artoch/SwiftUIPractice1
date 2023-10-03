//
//  ScrollImage.swift
//  seventeen
//
//  Created by Alfredo Tochon on 10/3/23.
//

import SwiftUI

struct ScrollImage: View {
    
    let image: ImageResource
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
            .scrollTransition { content, phase in
                content.scaleEffect(phase.isIdentity ? 1 : 0.8)
                    .opacity(phase.isIdentity ? 1 : 0.7)
                    .rotation3DEffect(.degrees(phase.isIdentity ? 0 : 45), axis: (x: 1, y: 0, z: 0))
            }
    }
}

#Preview {
    ScrollImage(image: .bellagio)
}
