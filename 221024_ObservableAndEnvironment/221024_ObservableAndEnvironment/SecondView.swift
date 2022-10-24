//
//  SecondView.swift
//  221024_ObservableAndEnvironment
//
//  Created by 고도 on 2022/10/24.
//

import SwiftUI

struct SecondView: View {
    @ObservedObject var timeData: TimerData
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timeData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(timeData: TimerData())
    }
}
