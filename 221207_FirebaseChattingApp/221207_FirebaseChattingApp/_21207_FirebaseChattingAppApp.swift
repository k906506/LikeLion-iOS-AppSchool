//
//  _21207_FirebaseChattingAppApp.swift
//  221207_FirebaseChattingApp
//
//  Created by 고도 on 2022/12/07.
//

import SwiftUI

@main
struct _21207_FirebaseChattingAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ChatViewModel())
        }
    }
}
