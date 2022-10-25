//
//  CarStore.swift
//  221025_ListNavDemo
//
//  Created by 고도 on 2022/10/25.
//

import Foundation
import Combine

class CarStore: ObservableObject {
    @Published var cars: [Car]
    
    init(cars: [Car] = []) {
        self.cars = cars
    }
}
