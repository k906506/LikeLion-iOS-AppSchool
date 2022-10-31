//
//  TopSettingView.swift
//  221031_GraphicAndAnimation
//
//  Created by 고도 on 2022/10/31.
//

import SwiftUI

struct TopSettingView: View {
    @Binding var columnCnt: Int
    var isFocused: FocusState<Bool>.Binding
    
    var body: some View {
        VStack {
            SetColumnCountView(columnCnt: $columnCnt, isFocused: isFocused)
            OtherButtonView(columnCnt: $columnCnt)
        }
    }
}

// 페이지당 그래프 개수를 설정하는 뷰
struct SetColumnCountView: View {
    @Binding var columnCnt: Int
    var isFocused: FocusState<Bool>.Binding
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Spacer()
                
                // Binding<Int> -> Binding<String>
                TextField("정수", value: $columnCnt, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                    .font(.title)
                    .frame(width: 48, height: 24)
                    .focused(isFocused)
                
                Spacer()
                
                Button(action: {
                    if columnCnt > 0 {
                        columnCnt -= 1
                    }
                }) {
                    Image(systemName: "minus")
                        .foregroundColor(.white)
                        .frame(width: 24, height: 24)
                }.padding()
                    .background(.blue)
                    .cornerRadius(8)
        
                
                Button(action: {
                 columnCnt += 1
                }) {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .frame(width: 24, height: 24)
                }.padding()
                    .background(.blue)
                    .cornerRadius(8)
                
                Spacer()
            }
        }
        .padding([.top, .leading, .trailing], 8.0)
    }
}

// 난수 생성과 정렬을 담당하는 뷰
struct OtherButtonView: View {
    @EnvironmentObject var randomNumber: RandomNumber
    @Binding var columnCnt: Int
    
    var body: some View {
        HStack {
            Button(action: {
                randomNumber.setRandomNumbers(columnCnt: columnCnt)
            }) {
                Text("난수 생성하기")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(8)
            }
            
            Button(action: {
                randomNumber.sortRandomNumbers()
            }) {
                Text("난수 정렬하기")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(8)
            }
        }.padding()

    }
}

struct TopSettingView_Previews: PreviewProvider {
    @State static private var columnCnt: Int = 0
    @FocusState static private var isFocused: Bool
    
    static var previews: some View {
        TopSettingView(columnCnt: $columnCnt, isFocused: $isFocused)
    }
}
