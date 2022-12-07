//
//  MemoViewModel.swift
//  221206_FirebaseBasic
//
//  Created by 고도 on 2022/12/06.
//

import Foundation
import FirebaseDatabase
import FirebaseFirestore

class MemoViewModel: ObservableObject {
    @Published var memos: [Memo] = []
    
    private lazy var databasePath: DatabaseReference? = Database.database().reference().child("memos")
    
    private let encoder: JSONEncoder = JSONEncoder()
    private let decoder: JSONDecoder = JSONDecoder()
    
    func getMemosAtFirebase() {
        guard let databasePath = databasePath else { return }
        
        // MARK - 데이터 추가를 위한 Observer
        databasePath
            .observe(.childAdded) { [weak self] snapshot in
                guard let self = self, let json = snapshot.value as? [String: Any] else { return }
                
                do {
                    let data = try JSONSerialization.data(withJSONObject: json)
                    let memo: Memo = try self.decoder.decode(Memo.self, from: data)
                    
                    self.memos.append(memo)
                } catch {
                    print("an error occured", error)
                }
            }
        
        // MARK - 데이터 변경을 위한 Observer
        databasePath
            .observe(.childChanged) { [weak self] snapshot in
                guard let self = self, let json = snapshot.value as? [String: Any] else { return }
                
                do {
                    let data = try JSONSerialization.data(withJSONObject: json)
                    let memo: Memo = try self.decoder.decode(Memo.self, from: data)
                 
                    guard let index = self.memos.firstIndex(where: { $0.id == memo.id }) else { return }
                    self.memos[index] = memo
                } catch {
                    print("an error occured", error)
                }
            }
        
        // MARK - 데이터 삭제를 위한 Observer
        databasePath
            .observe(.childRemoved) { [weak self] snapshot in
                guard let self = self, let json = snapshot.value as? [String: Any] else { return }
                
                do {
                    let data = try JSONSerialization.data(withJSONObject: json)
                    let memo: Memo = try self.decoder.decode(Memo.self, from: data)
                 
                    guard let index = self.memos.firstIndex(where: { $0.id == memo.id }) else { return }
                    self.memos.remove(at: index)
                } catch {
                    print("an error occured", error)
                }
            }
    }
    
    func setMemoAtFirebase(memo: Memo) {
        let memoToDict: [String: String] = [
            "id" : memo.id,
            "name" : memo.name
        ]
        
        guard let databasePath = databasePath else { return }

        databasePath.updateChildValues([memo.id : memoToDict])
    }
    
    func removeMemoAtFirebase(key: String) {
        guard let databasePath = databasePath else { return }
        
        databasePath.ref.child(key).removeValue()
    }
}
