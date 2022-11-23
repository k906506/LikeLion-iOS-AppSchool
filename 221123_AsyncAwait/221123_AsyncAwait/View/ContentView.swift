//
//  ContentView.swift
//  221123_AsyncAwait
//
//  Created by 고도 on 2022/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: {
                LectureDetailView()
            }) {
                Text("이동")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
