//
//  _21123_AsyncAwaitApp.swift
//  221123_AsyncAwait
//
//  Created by 고도 on 2022/11/23.
//

import SwiftUI

@main
struct _21123_AsyncAwaitApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(LectureViewModel())
        }
    }
}
