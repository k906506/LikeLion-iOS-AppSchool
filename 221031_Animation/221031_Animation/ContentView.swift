//
//  ContentView.swift
//  221031_Animation
//
//  Created by 고도 on 2022/10/31.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0.0
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        AutoAnimationView()
//        ToggleOnOffView()
//        VStack {
//            Button(action: {
//                withAnimation(.linear(duration: 1).repeatForever(autoreverses: true)) {
//                    rotation = (rotation < 360) ? rotation + 60 : 0
//                }
//                scale = (scale < 2.8) ? scale + 0.3  : 1
//            }) {
//                Text("Click to animate")
//                    .scaleEffect(scale)
//                    .rotationEffect(.degrees(rotation))
//                    .animation(.linear(duration: 1).repeatForever(autoreverses: true), value: scale)
//            }
//        }
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
