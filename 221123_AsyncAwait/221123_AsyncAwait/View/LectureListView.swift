//
//  LectureDetailView.swift
//  221123_AsyncAwait
//
//  Created by 고도 on 2022/11/23.
//

import SwiftUI

struct LectureListView: View {
    @EnvironmentObject var lectureVM: LectureViewModel
    @State private var num: Int = 0
    
    var body: some View {
        if lectureVM.items.isEmpty {
            ProgressView()
            // 앱을 처음 실행했을 때만 ProgressView를 보여줌
                .task {
                    do {
                        try await lectureVM.getLecturesOnServer()
                    } catch (let error) {
                        print("Unable to get data : \(error)")
                    }
                }
        } else {
            ScrollView {
                LazyVStack {
                    ForEach(lectureVM.items) { item in
                        LectureItemView(lecture: item)
                            .onAppear {
                                guard let index = lectureVM.items.firstIndex(where: { $0.id == item.id }) else { return }
                                
                                if index % 10 == 9 {
                                    Task {
                                        do {
                                            try await lectureVM.getLecturesOnServerAtFinishedScroll()
                                        } catch (let error) {
                                            print("Unable to get data : \(error)")
                                        }
                                    }
                                    
                                }
                            }
                    }
                }
            }
            .navigationTitle("K-MOOC 강좌 목록")
        }
        
    }
}

//struct LectureListView_Previews: PreviewProvider {
//    static var previews: some View {
//        LectureListView()
//    }
//}
