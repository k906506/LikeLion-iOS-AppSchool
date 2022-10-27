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
            //            CustomCircleView(centerPoint: centerPoints[0], color: colors[0])
            //
            //            CustomCircleView(centerPoint: centerPoints[1], color: colors[1])
            //
            //            CustomCircleView(centerPoint: centerPoints[2], color: colors[2])
            //
            //            CustomCircleView(centerPoint: centerPoints[3], color: colors[3])
            //
            //            CustomCircleView(centerPoint: centerPoints[4], color: colors[4])
            
            StarShape()
                .fill(.red)
                .frame(width: 400, height: 400)
            
            StarShape()
                .fill(.orange)
                .frame(width: 350, height: 350)
            
            
            StarShape()
                .fill(.yellow)
                .frame(width: 300, height: 300)
            
            StarShape()
                .fill(.green)
                .frame(width: 250, height: 250)
            
            StarShape()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            StarShape()
                .fill(.purple)
                .frame(width: 150, height: 150)

            StarShape()
                .fill(.black)
                .frame(width: 100, height: 100)
        
        }
    }
    
    
}

struct CustomCircleView: View {
    var centerPoint: CGPoint
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
        .foregroundColor(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
