//
//  ItemViewModel.swift
//  221122_URLSessionDemo
//
//  Created by 고도 on 2022/11/22.
//

import Foundation

class ItemViewModel: ObservableObject {
    @Published var items: [Item] = []
    
    init() {
        self.getItemsOnServer()
    }
    
    private func getItemsOnServer() {
        let url: URL = URL(string: "https://nr89frnqk0.execute-api.ap-northeast-2.amazonaws.com/dev/search")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data else {
                print("Error!")
                return
            }
            
            do {
                let responseBody = try JSONDecoder().decode(JsonData.self, from: data)
                
                // 메인 쓰레드에서 작동하도록
                DispatchQueue.main.async {
                    self.items = responseBody.body.list
                }
            } catch (let error) {
                print(error)
            }
        }.resume()
    }
}
