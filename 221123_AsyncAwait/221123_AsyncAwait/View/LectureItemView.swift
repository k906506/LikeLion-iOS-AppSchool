//
//  LectureItemView.swift
//  221123_AsyncAwait
//
//  Created by 고도 on 2022/11/23.
//

import SwiftUI

struct LectureItemView: View {
    var lecture: Result
    
    var body: some View {
        HStack {
            AsyncImage(url: lecture.media.image.small) { image in
                image
                    .resizable()
                
            } placeholder: {
                ProgressView()
                .frame(width: 140)
            }
            .scaledToFill()
            .frame(width: 140)
            .clipped()
            .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(lecture.name)
                    .font(.body)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text(lecture.teachers)
                    .font(.footnote)
                    .lineLimit(1)
                
                Spacer()
                
                Text(lecture.startDisplay)
                    .font(.footnote)
            }
            .padding(4)
            
            Spacer()
        }
        .padding(8)
    }
}

//struct LectureItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        LectureItemView()
//    }
//}
