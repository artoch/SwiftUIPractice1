//
//  ImageListBehavior.swift
//  seventeen
//
//  Created by Alfredo Tochon on 10/3/23.
//

import SwiftUI

struct ImageListBehavior: View {
    
    @State private var shouldBounce = false
    
    var body: some View {
        VStack {
            Image(.bellagio)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
            
            Image(systemName: "globe")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundColor(.blue)
                .symbolEffect(.pulse, options: .repeat(3))
            
            Image(systemName: "wifi")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundColor(.purple)
                .symbolEffect(.variableColor.reversing)
            
            Image(systemName: "person.crop.circle.badge.plus")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundColor(.blue)
                .symbolRenderingMode(.multicolor)
                .symbolEffect(.bounce, value: shouldBounce)
                .onTapGesture {
                    shouldBounce.toggle()
                }
            
            Image(systemName: "cloud.sun.rain.fill")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.gray, .yellow, .mint)
                .symbolEffect(.bounce, value: shouldBounce)
                .onTapGesture {
                    shouldBounce.toggle()
                }
        }
        .padding()
    }
}

#Preview {
    ImageListBehavior()
}
