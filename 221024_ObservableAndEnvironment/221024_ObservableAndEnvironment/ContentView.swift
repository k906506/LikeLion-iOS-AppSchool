//
//  ContentView.swift
//  221024_ObservableAndEnvironment
//
//  Created by 고도 on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    // @ObservedObject var timerData: TimerData = TimerData()
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount) {
                    Text("Reset Counter")
                }
                
                NavigationLink(destination: SecondView(), label: {
                    Text("Next Screen")
                }).padding()
            }
        }
    }
    
    func resetCount() {
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TimerData())
    }
}
