//
//  ContentView.swift
//  221024_Observable
//
//  Created by 고도 on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var number: CustomNumber
    
    var body: some View {
        NavigationView {
            VStack {
                Text("\(self.number.number)")
                
                Button(action: {
                    self.number.increateNumber()
                }) {
                    Text("눌러주세요!")
                }
                
                SubView(number: number)
                
                
                NavigationLink(destination: SecondView(number: number)) {
                    Text("Second View로 이동")
                }
            }
        }
    }
}

struct SubView: View {
    @ObservedObject var number: CustomNumber
    
    var body: some View {
        VStack {
            Text("This is SubView")
            Text("\(self.number.number)")
            
            Button(action: {
                self.number.increateNumber()
            }) {
                Text("눌러주세요!")
            }
        }
        .padding()
        .background(.gray)
    }
}

struct SecondView: View {
    @ObservedObject var number: CustomNumber
    
    var body: some View {
        VStack {
            Text("This is Second View")
            Text("\(self.number.number)")
            
            Button(action: {
                self.number.increateNumber()
            }) {
                Text("눌러주세요!")
            }
        }
        .padding()
        .background(.gray)
    }
}
