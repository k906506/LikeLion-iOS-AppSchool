//
//  ChatScrollView.swift
//  221207_FirebaseChattingApp
//
//  Created by 고도 on 2022/12/07.
//

import SwiftUI

struct ChatScrollView: View {
    @EnvironmentObject var chatVM: ChatViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .trailing) {
                ForEach(chatVM.items) { item in
                    ChatItemView(string: item.content)
                }
            }
        }.padding()
    }
}

struct ChatItemView: View {
    var string: String
    
    var body: some View {
        Text(string)
            .padding(.horizontal, 8)
            .padding(.vertical, 8)
            .background(Color(uiColor: UIColor(rgb: 0xFFE270)))
            .cornerRadius(12)
    }
}

struct ChatScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ChatScrollView().environmentObject(ChatViewModel())
    }
}
