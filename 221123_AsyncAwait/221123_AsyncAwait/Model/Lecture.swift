//
//  Lecture.swift
//  221123_AsyncAwait
//
//  Created by 고도 on 2022/11/23.
//

import Foundation

struct Lecture: Codable {
    let pagination: Pagination
    let results: [Result]
}

struct Pagination: Codable {
    let count: Int
    let numPages: Int
    let next: URL
    
    enum CodingKeys: String, CodingKey {
        case count
        case numPages = "num_pages"
        case next
    }
}

struct Result: Codable, Identifiable {
    let id: UUID = UUID() // List를 사용하기 위해 identifiable 추가
    let name: String
    let media: Media
    let teachers: String
    let shortDesc: String
    let startDisplay: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case teachers
        case media
        case shortDesc = "short_description"
        case startDisplay = "start_display"
    }
}

struct Media: Codable {
    let image: ImagePerSize
}

struct ImagePerSize: Codable {
    let raw: URL
    let small: URL
    let large: URL
}
