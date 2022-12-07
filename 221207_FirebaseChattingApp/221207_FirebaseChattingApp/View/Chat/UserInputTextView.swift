//
//  UserInputTextView.swift
//  221207_FirebaseChattingApp
//
//  Created by 고도 on 2022/12/07.
//

import SwiftUI

struct UserInputTextView: View {
    @EnvironmentObject var chatVM: ChatViewModel
    @State private var userInput: String = ""
    
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Image(systemName: "plus")
                    .foregroundColor(.black)
            }
            .frame(width: 48, height: 48)
            .background(.yellow)
            .cornerRadius(16)
            .padding(.leading, 8)
            
            HStack {
                TextField("텍스트를 입력해주세요.", text: $userInput)
                
                // Send 버튼 클릭 시 chatVM에 userInput 전달
                Button(action: tapSendButton) {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.black)
                }
            }
            .frame(height: 48)
            .padding(.horizontal, 12)
            .background(.yellow)
            .cornerRadius(16)
            .padding(.trailing, 8)
        }
        .padding(.bottom, 8)
    }
    
    // MARK - Send 버튼 클릭 시 chatVM에 userInput 전달하는 메소드
    private func tapSendButton() {
        if !userInput.isEmpty {
            chatVM.updateChat(userInput)
        }
    }
}

struct UserInputTextView_Previews: PreviewProvider {
    static var previews: some View {
        UserInputTextView()
    }
}
