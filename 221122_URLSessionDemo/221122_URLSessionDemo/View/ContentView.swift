//
//  ContentView.swift
//  221122_URLSessionDemo
//
//  Created by 고도 on 2022/11/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var itemVM: ItemViewModel
    
    var body: some View {
        List($itemVM.items) { item in
            ListItemView(item: item)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
