//
//  MyUILabel.swift
//  221102_IntegrateSwiftUIAndUIView
//
//  Created by 고도 on 2022/11/02.
//

import SwiftUI

struct MyUILabel: UIViewRepresentable {
    
    var text: String
    
    func makeUIView(context: UIViewRepresentableContext<MyUILabel>) -> UILabel {
        let myLabel = UILabel()
        myLabel.text = text
        return myLabel
    }
    
    func updateUIView(_ uiView: UILabel, context: UIViewRepresentableContext<MyUILabel>) {
    }
}

struct MyUILabel_Previews: PreviewProvider {
    static var previews: some View {
        MyUILabel(text: "hello")
    }
}
