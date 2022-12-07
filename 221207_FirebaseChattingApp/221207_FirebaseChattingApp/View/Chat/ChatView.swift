//
//  ChatView.swift
//  221207_FirebaseChattingApp
//
//  Created by 고도 on 2022/12/07.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack {
            ChatScrollView()
            UserInputTextView()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView().environmentObject(ChatViewModel())
    }
}
