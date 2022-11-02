//
//  ContentView.swift
//  221102_IntegrateSwiftUIAndUIView
//
//  Created by 고도 on 2022/11/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MyScrollView(text: "안녕하세요")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
