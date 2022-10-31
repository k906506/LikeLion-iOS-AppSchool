//
//  ToggleOnOffView.swift
//  221031_Animation
//
//  Created by 고도 on 2022/10/31.
//

import SwiftUI

struct ToggleOnOffView: View {
    @State private var visibility = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $visibility.animation(.linear(duration: 5))) {
                Text("Toogle Test View")
            }
            .padding()
            
            if visibility {
                Text("Hello World")
                    .font(.largeTitle)
            }
            
            if !visibility {
                Text("Goodbye World")
                    .font(.largeTitle)
            }
        }
    }
}

struct ToggleOnOffView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleOnOffView()
    }
}
