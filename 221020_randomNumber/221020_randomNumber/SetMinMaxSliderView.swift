//
//  SetMinMaxSliderView.swift
//  221020_randomNumber
//
//  Created by 고도 on 2022/10/20.
//

import SwiftUI

struct SetMinMaxSliderView: View {
    let minValue: CGFloat = 0
    let maxValue: CGFloat = 99
    
    @State private var isOpen: Bool = false
    @State private var minInSliderValue: CGFloat = 0
    @State private var maxInSliderValue: CGFloat = 99
    @State private var randomNumber: Int = -1
    @State private var inputNumber: Int = 0
    @State private var isCorrect: Bool = false
    
    var isFocused: FocusState<Bool>.Binding
   
    var body: some View {
        VStack(alignment: .center) {
            Toggle(isOn: $isOpen) {
                isOpen ? Text("슬라이더 닫기") : Text("슬라이더 열기")
            }
            .padding(.bottom, 8.0)
            
            if isOpen {
                Text("최소값")
                    .font(.title2)
                
                Slider(value: $minInSliderValue, in: self.minValue...maxValue, step: 1) {
                    Text("최소값")
                }
                .padding(.bottom, 8.0)
                
                Text("최댓값")
                    .font(.title2)
                
                Slider(value: $maxInSliderValue, in: self.minValue...maxValue, step: 1) {
                    Text("최댓값")
                }
                .padding(.bottom, 8.0)
            }
            
            HStack {
                Spacer()
                
                Button(action: getRandomNumber) {
                    Text("\(Int(self.minInSliderValue)) 에서 \(Int(self.maxInSliderValue)) 사이의 랜덤 숫자 생성하기")
                        .foregroundColor(.blue)
                }
                
                Spacer()
            }
            
            // 정답, 오답 보여주는 뷰
            
            Spacer()
            
            VStack {
                if self.isCorrect {
                    
                    Text("🥳")
                        .font(.title)
                    Text("정답입니다!")
                        .font(.title)
                    
                } else {
                    Text("🤪")
                        .font(.title)
                    Text("틀렸습니다!")
                        .font(.title)
                    
                    if self.randomNumber < self.inputNumber {
                        Text("더 작은 수를 입력해주세요!")
                            .foregroundColor(.red)
                            .padding()
                    } else if self.randomNumber > self.inputNumber {
                        Text("더 큰 수를 입력해주세요!")
                            .foregroundColor(.red)
                            .padding()
                    }
                }
            }
            
            Spacer()
            
            // 입력 값
            
            HStack {
                Spacer()
                
                Button(action: decreaseNumber) {
                    Image(systemName: "minus")
                        .resizable()
                        .aspectRatio(10, contentMode: .fit)
                        .frame(width: 32, height: 32)
                }
                
                Spacer()
                
                // 새로운 값을 할당할 때는 $(Binding) 기호를 써서 상태 프로퍼티와 연결?
                TextField("숫자", value: $inputNumber, formatter: NumberFormatter())
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .padding()
                    .focused(self.isFocused)
                
                // 상태 프로퍼티를 단순히 사용만 할 때는 그냥 평소처럼 써도 됨
                // Text("\(inputNumber)")
                
                Spacer()
                
                Button(action: increaseNumber) {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 32, height: 32)
                }
                
                Spacer()
                
                
            }
            .padding()
            //            .overlay(
            //                RoundedRectangle(cornerRadius: 16)
            //                    .stroke(.blue, lineWidth: 4)
            //            )
            .padding(.horizontal)
            
            Button(action: verifyRandomAndInputNumber) {
                Text("확인")
                    .foregroundColor(.white)
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(12)
            }
            .buttonStyle(PlainButtonStyle())
            .padding()
            
        }
        .padding()
    }
    
    func getRandomNumber()  {
        self.randomNumber = Int.random(in: Int(minInSliderValue)...Int(maxInSliderValue))
        debugPrint(self.randomNumber)
    }
    
    func verifyRandomAndInputNumber() {
        if self.randomNumber == self.inputNumber {
            debugPrint("correct")
            self.isCorrect = true
        } else {
            debugPrint("incorrect")
            self.isCorrect = false
        }
    }
    
    private func increaseNumber() {
        if self.inputNumber < 99 {
            self.inputNumber += 1
        }
    }
    
    private func decreaseNumber() {
        if self.inputNumber > 0 {
            self.inputNumber -= 1
        }
    }
}

//struct SetMinMaxSliderView_Previews: PreviewProvider {
//    static var previews: some View {
//        SetMinMaxSliderView(isFocused: .constant(false))
//    }
//}
