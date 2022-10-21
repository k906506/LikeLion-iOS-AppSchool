//
//  CustomView.swift
//  221018_CustomView
//
//  Created by 고도 on 2022/10/18.
//

import SwiftUI

struct CustomView: View {
    var state: Bool = false
    
    var body: some View {
        Button("Hello", action: tapHelloButton)
    }
    
    func tapHelloButton() {
        if state {
            print("Hello")
        } else {
            print("bye bye")
        }
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}

