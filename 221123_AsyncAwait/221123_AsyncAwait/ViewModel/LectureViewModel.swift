//
//  LectureViewModel.swift
//  221123_AsyncAwait
//
//  Created by 고도 on 2022/11/23.
//

import Foundation

class LectureViewModel: ObservableObject {
    @Published var items: [Result] = []
    private var nextURL: String = ""
    private var APIKEY: String = ""
    
    // ViewModel이 처음 생성될 때 메소드 호출
//    init() async {
//        do {
//            try await getLecturesOnServer()
//        } catch (let error) {
//            print("Unable to get data : \(error)")
//        }
//    }
    
    init() {}
    
    // 앱을 처음 켰을 때 강좌를 가져오기 위한 메소드
    func getLecturesOnServer() async throws {
        let responseData: Lecture = try await WebService.shared.loadJson("https://apis.data.go.kr/B552881/kmooc/courseList?serviceKey=\(APIKEY)&Page=1&Org=FUNMOOC&Mobile=1")
 
        DispatchQueue.main.async {
            self.items = responseData.results
            self.nextURL = "\(responseData.pagination.next)"
        }
    }
    
    // 스크롤을 끝까지 내렸을 때 추가적으로 강좌를 가져오기 위한 메소드
    func getLecturesOnServerAtFinishedScroll() async throws {
        let responseData: Lecture = try await WebService.shared.loadJson(nextURL)
        
        // 기존 강좌 목록에 새로 가져온 강좌 목록을 추가
        DispatchQueue.main.async {
            self.items += responseData.results
            self.nextURL = "\(responseData.pagination.next)"
        }
    }
}
