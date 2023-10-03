//
//  ScrollView.swift
//  seventeen
//
//  Created by Alfredo Tochon on 10/3/23.
//

import SwiftUI

struct ScrollView: View {
    
    @State private var shouldBounce = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Hola como estan")
            }
        }
        .padding()
    }
}

#Preview {
    ScrollView()
}
