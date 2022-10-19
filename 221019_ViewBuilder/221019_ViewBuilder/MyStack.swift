//
//  MyVStack.swift
//  221019_ViewBuilder
//
//  Created by 고도 on 2022/10/19.
//

import SwiftUI

// VStack 커스텀
struct MyVStack<Content: View>: View {
    let content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(){
            content()
        }
        .font(.title)
        .foregroundColor(.accentColor)
        .padding()
    }
}

// HStack 커스텀
struct MyHStack<Content: View>: View {
    let content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        HStack(){
            content()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200)
        .font(.headline)
        .foregroundColor(.red)
        .background(.blue)
        .padding()
    }
}
