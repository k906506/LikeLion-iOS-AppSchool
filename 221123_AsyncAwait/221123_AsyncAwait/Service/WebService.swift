//
//  WebService.swift
//  221123_AsyncAwait
//
//  Created by 고도 on 2022/11/23.
//

import Foundation

class WebService {
    // json을 T타입의 데이터로 디코딩하는 메소드
    static func loadJson<T: Decodable>(_ url: String) async throws -> T {
        do {
            let url = URL(string: url)!
            let (data, _) = try await URLSession.shared.data(from: url)
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            fatalError("Unable to parse data : \(error)")
        }
    }
}
