//
//  LectureDetailView.swift
//  221123_AsyncAwait
//
//  Created by 고도 on 2022/11/23.
//

import SwiftUI

struct LectureDetailView: View {
    @EnvironmentObject var lectureVM: LectureViewModel
    
    var body: some View {
        VStack {
            List(lectureVM.items) { item in
                LectureItemView(lecture: item)
            }
            .listStyle(.inset)
            .task {
                do {
                    try await lectureVM.getLecturesOnServer()
                } catch (let error) {
                    print("Unable to get data : \(error)")
                }
            }
            
            Button(action: {
                Task {
                    do {
                        try await lectureVM.getLecturesOnServerAtFinishedScroll()
                    } catch (let error) {
                        print("Unable to get data : \(error)")
                    }
                }
            }) {
                Text("강좌 가져오기")
            }
        }
        
        .navigationTitle("K-MOOC 강좌 목록")
        
    }
}

//struct LectureDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        LectureDetailView()
//    }
//}
