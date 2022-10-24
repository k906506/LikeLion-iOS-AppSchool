//
//  _21024_ObservableAndEnvironmentApp.swift
//  221024_ObservableAndEnvironment
//
//  Created by 고도 on 2022/10/24.
//

import SwiftUI

@main
struct _21024_ObservableAndEnvironmentApp: App {
    let timerData: TimerData = TimerData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(timerData)
        }
    }
}
