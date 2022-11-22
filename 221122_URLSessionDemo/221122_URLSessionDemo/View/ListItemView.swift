//
//  ListItemView.swift
//  221122_URLSessionDemo
//
//  Created by 고도 on 2022/11/22.
//

import SwiftUI

struct ListItemView: View {
    @Binding var item: Item
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: item.photoUrl)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Color.gray
            }
            .frame(width: 130)
            .cornerRadius(8)
            .clipped()
            
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .padding(.bottom, 4)
                
                Text("\(item.price ?? 0)원")
                    .font(.footnote)
            }
            
        }.frame(height: 150)
    }
}

//struct ListItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListItemView()
//    }
//}
