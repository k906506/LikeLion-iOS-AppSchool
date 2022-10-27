//
//  ContentView.swift
//  221027_Drawing
//
//  Created by 고도 on 2022/10/27.
//

import SwiftUI

struct ContentView: View {
    // 오륜기의 중심점 좌표가 담긴 배열
    var centerPoints: [CGPoint] = [
        CGPoint(x: 80, y: 100),
        CGPoint(x: 200, y: 100),
        CGPoint(x: 320, y: 100),
        CGPoint(x: 140, y: 150),
        CGPoint(x: 260, y: 150)
    ]
    var colors: [Color] = [.blue, .black, .red, .yellow, .green]
    
    var body: some View {
        ZStack {
            CustomCircleView(centerPoint: centerPoints[0], offset: [0, 0], color: colors[0])
            
            CustomCircleView(centerPoint: centerPoints[1], offset: [0, 0], color: colors[1])
            
            CustomCircleView(centerPoint: centerPoints[2], offset: [0, 0], color: colors[2])
            
            CustomCircleView(centerPoint: centerPoints[3], offset: [0, 0], color: colors[3])
            
            CustomCircleView(centerPoint: centerPoints[4], offset: [0, 0], color: colors[4])
        }
    }
}

struct CustomCircleView: View {
    var centerPoint: CGPoint
    var offset: [CGFloat]
    var color: Color
    
    var body: some View {
        Path { path in
            path.addArc(
                center: centerPoint,
                radius: 50,
                startAngle: .degrees(0),
                endAngle: .degrees(360),
                clockwise: true
            )
        }
        .stroke(lineWidth: 10)
        .offset(x: offset[0], y: offset[1])
        .foregroundColor(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
