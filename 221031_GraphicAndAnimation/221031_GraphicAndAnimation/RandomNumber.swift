//
//  RandomNumber.swift
//  221031_GraphicAndAnimation
//
//  Created by 고도 on 2022/10/31.
//

import Foundation

class RandomNumber: ObservableObject {
    @Published var randomNumbers: [[Int]] = []
    
    init() {
        initRandomNumbers()
    }
    
    // 초기화 메소드
    private func initRandomNumbers() {
        let cntForArray: Int = 3
        let cntForNumber: Int = 5
        
        for _ in 0..<cntForArray {
            var temp: [Int] = []
            
            for _ in 0..<cntForNumber {
                temp.append(Int.random(in: 0..<100))
            }
            
            self.randomNumbers.append(temp)
        }
    }
    
    // 설정 메소드
    func setRandomNumbers(columnCnt: Int) {
        self.randomNumbers = []
        
        let cntForArray: Int = 3
        let cntForNumber: Int = columnCnt
        
        for _ in 0..<cntForArray {
            var temp: [Int] = []
            
            for _ in 0..<cntForNumber {
                temp.append(Int.random(in: 0..<100))
            }
            
            self.randomNumbers.append(temp)
        }
    }
    
    func sortRandomNumbers() {
        let tempArray = self.randomNumbers.map { $0.sorted() }
        self.randomNumbers = tempArray
    }
}
