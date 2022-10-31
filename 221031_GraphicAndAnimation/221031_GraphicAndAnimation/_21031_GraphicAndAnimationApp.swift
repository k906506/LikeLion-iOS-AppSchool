//
//  _21031_GraphicAndAnimationApp.swift
//  221031_GraphicAndAnimation
//
//  Created by 고도 on 2022/10/31.
//

import SwiftUI

@main
struct _21031_GraphicAndAnimationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(RandomNumber())
        }
    }
}
