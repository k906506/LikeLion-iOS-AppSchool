//
//  SecondView.swift
//  221024_ObservableAndEnvironment
//
//  Created by 고도 on 2022/10/24.
//

import SwiftUI

struct SecondView: View {
    // @ObservedObject var timerData: TimerData
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        // SecondView(timerData: TimerData())
        SecondView().environmentObject(TimerData())
    }
}
