//
//  ContentView.swift
//  221020_randomNumber
//
//  Created by 고도 on 2022/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            SetMinMaxSliderView()
            UserInputNumberView()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
