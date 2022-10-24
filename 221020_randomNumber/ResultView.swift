//
//  ResultView.swift
//  221020_randomNumber
//
//  Created by 고도 on 2022/10/21.
//

import SwiftUI

struct ResultView: View {
    @Foc var isCorrect: Bool
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            
            VStack {
                if self.isCorrect {
                    Text("🤪")
                        .font(.title)
                    Text("틀렸습니다!")
                        .font(.title)
                } else {

                    Text("🥳")
                        .font(.title)
                    Text("정답입니다!")
                        .font(.title)
                }
            }
            
            Spacer()
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(isCorrect: .constant(false))
    }
}
