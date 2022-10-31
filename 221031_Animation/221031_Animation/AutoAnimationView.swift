//
//  AutoAnimationView.swift
//  221031_Animation
//
//  Created by 고도 on 2022/10/31.
//

import SwiftUI

struct AutoAnimationView: View {
    @State private var isSpinning: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 2)
                .foregroundColor(.blue)
                .frame(width: 360, height: 360)
            
            Image(systemName: "forward.fill")
                .font(.largeTitle)
                .offset(y: -180)
                .rotationEffect(.degrees(isSpinning ? 360 : 0))
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
        }.onAppear() {
            self.isSpinning.toggle()
        }
    }
}

struct AutoAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AutoAnimationView()
    }
}
