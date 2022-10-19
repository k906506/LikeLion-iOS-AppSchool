//
//  ContentView.swift
//  221019_ViewBuilder
//
//  Created by 고도 on 2022/10/19.
//

import SwiftUI

struct ContentView: View {
    @State private var airplainState: Bool = false
    @State private var wifiState: Bool = false
    @State private var cellularState: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("설정")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom)
            
            // 바인딩
            TopResultView(airplainState: $airplainState, wifiState: $wifiState, cellularState: $cellularState)
            
            Toggle(isOn: $airplainState) {
                (Text(Image(systemName: "airplane")) + Text("  에어플레인 모드"))
            }
            
            Toggle(isOn: $wifiState) {
                (Text(Image(systemName: "wifi")) + Text("  Wi-Fi"))
            }
            
            Toggle(isOn: $cellularState) {
                (Text(Image(systemName: "network")) + Text("  셀룰러"))
            }
            
            Spacer()
            
            BottomResultView(airplainState: $airplainState, wifiState: $wifiState, cellularState: $cellularState)
            
            Spacer()
            
        }.padding()
    }
}

struct TopResultView: View {
    @Binding var airplainState: Bool
    @Binding var wifiState: Bool
    @Binding var cellularState: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("에어플레인 모드 ")
                .foregroundColor(.orange)
            + Text(airplainState ? "켜짐" : "꺼짐")
                .font(.headline)
            
            Text("Wi-Fi ")
                .foregroundColor(.blue)
            + Text(wifiState ? "켜짐" : "꺼짐")
                .font(.headline)
            
            Text("셀룰러 ")
                .foregroundColor(.green)
            + Text(cellularState ? "켜짐" : "꺼짐")
                .font(.headline)
        }
    }
}

struct BottomResultView: View {
    @Binding var airplainState: Bool
    @Binding var wifiState: Bool
    @Binding var cellularState: Bool
    
    var body: some View {
        (airplainState || wifiState || cellularState) ?
        Text("켜졌습니다.")
            .font(.title) :
        Text("꺼졌습니다.")
            .font(.title)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
