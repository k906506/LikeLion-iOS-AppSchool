//
//  ContentView.swift
//  221102_IntegrateSwiftUIAndViewController
//
//  Created by 고도 on 2022/11/02.
//

import SwiftUI

struct ContentView: View {
    @State var imagePickerVisible: Bool = false
    @State var selectedImage: Image? = Image(systemName: "photo")
    
    var body: some View {
        ZStack {
            VStack {
                selectedImage?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Button(action: {
                    withAnimation {
                        self.imagePickerVisible.toggle()
                    }
                }) {
                    Text("이미지 선택")
                }
            }.padding()
            
            
            if (imagePickerVisible) {
                MyImagePicker(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
