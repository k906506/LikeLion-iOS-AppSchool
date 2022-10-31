//
//  BottomButton.swift
//  221031_GraphicAndAnimation
//
//  Created by 고도 on 2022/10/31.
//

import SwiftUI

struct BottomButtonView: View {
    @Binding var section: Int
    
    var body: some View {
        HStack {
            CustomButtonView(action: {
                section = 0
            }, content: "첫 번째 배열")
            CustomButtonView(action: {
                section = 1
            }, content: "두 번째 배열")
            CustomButtonView(action: {
                section = 2
            }, content: "세 번째 배열")
        }
    }
}

struct CustomButtonView: View {
    var action: () -> Void
    var content: String
    
    var body: some View {
        Button(action: action) {
            Text(content)
        }
        .padding()
        .foregroundColor(.white)
        .background(.blue)
        .cornerRadius(8)
    }
}

struct BottomButtonView_Previews: PreviewProvider {
    @State static var section: Int = 0
    
    static var previews: some View {
        BottomButtonView(section: $section).environmentObject(RandomNumber())
    }
}
