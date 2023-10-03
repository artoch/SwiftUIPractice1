//
//  ScrollView.swift
//  seventeen
//
//  Created by Alfredo Tochon on 10/3/23.
//

import SwiftUI

struct Scrolling: View {
    
    @State private var shouldBounce = false
    
    var body: some View {
        ScrollView {
            VStack {
                ScrollImage(image: .bellagio)
                
                ScrollImage(image: .excalibur)
                
                ScrollImage(image: .luxor)
                
                ScrollImage(image: .paris)
                
                ScrollImage(image: .treasureisland)
                
                ScrollImage(image: .stratosphere)
                 
            }
        }.padding()
    }
}

#Preview {
    Scrolling()
}
