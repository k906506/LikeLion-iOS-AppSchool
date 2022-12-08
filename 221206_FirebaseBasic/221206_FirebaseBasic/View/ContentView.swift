//
//  ContentView.swift
//  221206_FirebaseBasic
//
//  Created by 고도 on 2022/12/06.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var memoVM: MemoViewModel
    
    var body: some View {
        List {
            ForEach(memoVM.memos) { memo in
                Text(memo.name)
                    .lineLimit(1)
            }.onDelete(perform: delete)
        }
        .onAppear {
            memoVM.updateMemos()
        }
        
        Button(action: {
            let id = UUID().uuidString
            memoVM.createMemo(memo: Memo(id: id, name: id))
        }) {
            Text("데이터 추가")
        }
    }
    
    private func delete(at offsets: IndexSet) {
        // 파베에서 제거할 때 Key 값으로 제거하므로 우선 Key를 찾고
        guard let index = offsets.first else { return }
        let key: String = memoVM.memos[index].id
        
        memoVM.removeMemo(key: key)
        
        // Array에서 제거
        memoVM.memos.remove(atOffsets: offsets)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
