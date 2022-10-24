//
//  TimerData.swift
//  221024_ObservableAndEnvironment
//
//  Created by 고도 on 2022/10/24.
//

import Foundation
import Combine

class TimerData: ObservableObject {
    @Published var timeCount: Int = 0
    var timer : Timer?
    
    init() {
        timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(timerDidFire),
            userInfo: nil,
            repeats: true)
    }
    
    @objc func timerDidFire() {
        timeCount += 1
    }
    
    func resetCount() {
        timeCount = 0
    }
}
