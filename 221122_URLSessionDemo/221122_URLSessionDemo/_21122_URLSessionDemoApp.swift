//
//  _21122_URLSessionDemoApp.swift
//  221122_URLSessionDemo
//
//  Created by 고도 on 2022/11/22.
//

import SwiftUI

@main
struct _21122_URLSessionDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ItemViewModel())
        }
    }
}
