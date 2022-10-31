//
//  GraphicView.swift
//  221031_GraphicAndAnimation
//
//  Created by 고도 on 2022/10/31.
//

import SwiftUI

struct GraphicView: View {
    @EnvironmentObject var randomNumber: RandomNumber
    @Binding var section: Int
    
    var body: some View {
        if section == 1 {
            CustomGraphicView(randomNumbers: randomNumber.randomNumbers[0])
        } else if section == 2 {
            CustomGraphicView(randomNumbers: randomNumber.randomNumbers[1])
        } else {
            CustomGraphicView(randomNumbers: randomNumber.randomNumbers[2])
        }
    }
}

// 생성한 난수로 그래프를 그리는 뷰
struct CustomGraphicView: View {
    var randomNumbers: [Int]
    
    var body: some View {
        HStack(alignment: .bottom) {
            ForEach(randomNumbers, id: \.self) { number in
                VStack {
                    Rectangle()
                        .frame(height: CGFloat(number))
                        .cornerRadius(8)
                        .foregroundColor(.gray)
                    
                    Text("\(number)")
                        .font(.body)
                        .lineLimit(1)
                        .minimumScaleFactor(0.1)
                }
            }
        }
    }
}

struct GraphicView_Previews: PreviewProvider {
    @State static var section: Int = 0
    
    static var previews: some View {
        GraphicView(section: $section)
    }
}
