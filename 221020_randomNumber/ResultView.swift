//
//  ResultView.swift
//  221020_randomNumber
//
//  Created by κ³ λ on 2022/10/21.
//

import SwiftUI

struct ResultView: View {
    @Foc var isCorrect: Bool
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            
            VStack {
                if self.isCorrect {
                    Text("π€ͺ")
                        .font(.title)
                    Text("νλ Έμ΅λλ€!")
                        .font(.title)
                } else {

                    Text("π₯³")
                        .font(.title)
                    Text("μ λ΅μλλ€!")
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
