//
//  ChangeAnimationView.swift
//  221031_Animation
//
//  Created by 고도 on 2022/10/31.
//

import SwiftUI

struct ChangeAnimationView: View {
    
    @State private var isButtonVisible: Bool = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $isButtonVisible.animation(.linear(duration: 2))) {
                Text("Show/Hide Button")
            }
            
            if isButtonVisible {
                Text("Hello")
                    .font(.largeTitle)
                    .transition(.asymmetric(insertion: .opacity.combined(with: .move(edge: .top)), removal: .opacity.combined(with: .move(edge: .top))))
            }
        }.padding()
    }
}

struct ChangeAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeAnimationView()
    }
}

if isButtonVisible {
Text("Hello")
.font(.largeTitle)
.transition(.asymmetric(
insertion: .opacity.combined(with: .move(edge: .top)),
removal: .opacity.combined(with: .move(edge: .top)))
)
}
