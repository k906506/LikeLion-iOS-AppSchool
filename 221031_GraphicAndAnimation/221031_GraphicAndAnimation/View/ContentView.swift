//
//  ContentView.swift
//  221031_GraphicAndAnimation
//
//  Created by 고도 on 2022/10/31.
//

import SwiftUI

struct ContentView: View {
    @State private var section: Int = 0 // 페이지? 개수
    @State private var columnCnt: Int = 5 // 페이지당 그래프 개수
    
    var body: some View {
        VStack {
            TopSettingView(columnCnt: $columnCnt)
            Divider()
            Spacer()
            GraphicView(section: $section)
            Spacer()
            Divider()
            BottomButtonView(section: $section)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
