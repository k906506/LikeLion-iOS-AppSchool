//
//  CustomNumber.swift
//  221024_Observable
//
//  Created by 고도 on 2022/10/24.
//

import Foundation
import Combine

class CustomNumber: ObservableObject {
    @Published var number = 0
    
    func increateNumber() {
        self.number += 1
    }
}
