//
//  Car.swift
//  221025_ListNavDemo
//
//  Created by 고도 on 2022/10/25.
//

import Foundation

struct Car: Codable, Identifiable {

    let id: String
    let name: String
    
    let description: String
    let isHybrid: Bool
    
    let imageName: String
}
