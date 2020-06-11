//
//  ContentView.swift
//  AnimateTextWidth
//
//  Created by bartvk on 11/06/2020.
//  Copyright © 2020 DutchVirtual. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animate = false
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello, World!")
                .fixedSize()
                .frame(width: self.animate ? 100 : 0, alignment: .leading).animation(.default)
                .clipped()
                .frame(maxWidth: .infinity)
            Button("Animate") {
                withAnimation {
                    self.animate.toggle()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
