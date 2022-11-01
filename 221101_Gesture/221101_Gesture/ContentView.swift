//
//  ContentView.swift
//  221101_Gesture
//
//  Created by 고도 on 2022/11/01.
//

import SwiftUI

struct ContentView: View {
    @State private var magnification: CGFloat = 1.0
    @GestureState private var offset: CGSize = .zero
    
    var body: some View {
        // 제스처를 변수에 할당하고 수정자에서 변수를 참고하는 것이 좋다
        let tapGesture = TapGesture(count: 2)
            .onEnded {
                print("Double Tap")
            }
        
        let longPressGesture = LongPressGesture()
            .onEnded { _ in
                print("Long Press")
            }
        
        let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
            .onEnded { _ in
//                self.magnification = 1.0
            }
            .onChanged({ value in
                if -2 < value || value < 3 {
                    self.magnification = value
                }
            })
        
        let drag = DragGesture()
            .updating($offset) { dragValue, state, transaction in
                state = dragValue.translation
                print(offset)
            }
        
        let magnificationAndDragGesture = MagnificationGesture(minimumScaleDelta: 0)
            .onEnded { _ in
                self.magnification = 1.0
            }
            .onChanged({ value in
                self.magnification = value
            })
            .simultaneously(with: DragGesture())
            .updating($offset) { dragValue, state, transaction in
                state = dragValue.second?.translation ?? .zero
                print(offset)
            }
        
        VStack {
//            Spacer()
//
//            Image(systemName: "hand.point.right.fill")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .gesture(
//                    TapGesture()
//                        .onEnded {
//                            print("Tap")
//                        }
//                )
//
//            Spacer()
//
//            Image(systemName: "hand.point.right.fill")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .gesture(tapGesture)
//
//            Spacer()
//
//            Image(systemName: "hand.point.right.fill")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .gesture(longPressGesture)
//
//            Spacer()
//
            Image(systemName: "hand.point.right.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .scaleEffect(magnification)
                .gesture(magnificationGesture)
//
//            Spacer()
//
//            Image(systemName: "hand.point.right.fill")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .offset(offset) // 제스처가 끝나면 원래 상태로 돌아감
//                .gesture(drag)
//
//            Spacer()
            
//            Image(systemName: "hand.point.right.fill")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .scaleEffect(magnification)
//                .offset(offset)
//                .gesture(magnificationAndDragGesture)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
