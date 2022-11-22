//
//  JsonData.swift
//  221122_URLSessionDemo
//
//  Created by 고도 on 2022/11/22.
//

import Foundation

struct JsonData: Codable {
    var statusCode: Int
    var body: JsonBody
}

struct JsonBody: Codable {
    var list: [Item]
}

struct Item: Codable, Identifiable {
    var id: UUID = UUID()
    var projectId: Int
    var title: String
    var type: String
    var photoUrl: String
    var price: Int?
}
