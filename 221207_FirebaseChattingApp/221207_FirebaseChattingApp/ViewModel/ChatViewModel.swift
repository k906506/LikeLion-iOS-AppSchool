//
//  ChatViewModel.swift
//  221207_FirebaseChattingApp
//
//  Created by 고도 on 2022/12/07.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var items: [Chat] = []
    
    func updateChat(_ string: String) {
        // 명시적으로 표현하기 위해 변수 정의
        let newChat: Chat = Chat(content: string)
        
        items.append(newChat)
    }
}
