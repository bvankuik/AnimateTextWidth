//
//  ContentView.swift
//  AnimateTextWidth
//
//  Created by bartvk on 11/06/2020.
//  Copyright © 2020 DutchVirtual. All rights reserved.
//

import SwiftUI

struct AnimatedText: View {
    @State private var animate = false
    let textAnimation = Animation.default.delay(5)

    var body: some View {
        VStack(spacing: 30) {
            Text("Hello, World!")
                .fixedSize()
                .frame(width: self.animate ? 100 : 0, alignment: .leading)
                .animation(Animation.easeInOut(duration: 3).delay(1))
                .clipped()
            Button("Animate") {
                self.animate.toggle()
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        AnimatedText()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
