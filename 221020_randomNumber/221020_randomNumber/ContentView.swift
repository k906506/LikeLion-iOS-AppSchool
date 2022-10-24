//
//  ContentView.swift
//  221020_randomNumber
//
//  Created by 고도 on 2022/10/20.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var isFocused: Bool
    
    var body: some View {
        ZStack {
            VStack {
                SetMinMaxSliderView(isFocused: self.$isFocused)
            }
            .padding()
        }
        .background(.white)
        .onTapGesture {
            print("hello")
            isFocused = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
