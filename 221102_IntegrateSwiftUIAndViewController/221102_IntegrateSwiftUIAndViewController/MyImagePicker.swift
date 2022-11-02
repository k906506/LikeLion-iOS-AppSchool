//
//  struct MyImagePicker.swift
//  221102_IntegrateSwiftUIAndViewController
//
//  Created by 고도 on 2022/11/02.
//

import SwiftUI

struct MyImagePicker: UIViewControllerRepresentable {
    @Binding var imagePickerVisible: Bool
    @Binding var selectedImage: Image?
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MyImagePicker>) ->  UIViewController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<MyImagePicker>) {
        
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        @Binding var imagePickerVisible: Bool
        @Binding var selectedImage: Image?
        
        init(imagePickerVisible: Binding<Bool>, selectedImage: Binding<Image?>) {
            _imagePickerVisible = imagePickerVisible
            _selectedImage = selectedImage
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            selectedImage = Image(uiImage:  uiImage)
            imagePickerVisible = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            imagePickerVisible = false
        }
    }
}
