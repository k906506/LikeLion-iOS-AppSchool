//
//  StarShape.swift
//  221027_Drawing
//
//  Created by 고도 on 2022/10/27.
//

import SwiftUI

struct StarShape: Shape {
    var outerVertexs: [Int] = [0, 72, 144, 216, 288, 360]
    var innerVertexs: [Int] = [36, 108, 180, 252, 324]
    
    // 오각형 - 삼각형 * 5개
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // 시계 방향으로 돌면서 그리기
        
        // 첫 번째 Outer 꼭지점
        path.move(to: CGPoint(x: rect.maxX * 0.5, y: rect.minY))
        // 첫 번째 Inner 꼭지점
        path.addLine(to: CGPoint(x: rect.maxX * 0.65, y: rect.maxY / 3))
        
        // 두 번째 Outer 꼭지점
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY / 3))
        // 두 번째 Inner 꼭지점
        path.addLine(to: CGPoint(x: rect.maxX * 0.75, y: rect.maxY * 0.625))
        
        // 세 번째 Outer 꼭지점
        path.addLine(to: CGPoint(x: rect.maxX * 0.8, y: rect.maxY))
        // 세번째 Inner 꼭지점
        path.addLine(to: CGPoint(x: rect.maxX * 0.5, y: rect.maxY * 0.8))
        
        // 네 번째 Outer 꼭지점
        path.addLine(to: CGPoint(x: rect.maxX * 0.2, y: rect.maxY))
        // 네 번째 Inner 꼭지점
        path.addLine(to: CGPoint(x: rect.maxX * 0.25, y: rect.maxY * 0.625))

        // 다섯 번째 Outer 꼭지점
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY / 3))
        // 다섯 번째 Inner 꼭지점
        path.addLine(to: CGPoint(x: rect.maxX * 0.35, y: rect.maxY / 3))
        
        path.closeSubpath()
        
        // 삼각형 제거하기
        return path
    }
}

struct StarShape_Previews: PreviewProvider {
    static var previews: some View {
        StarShape()
            .frame(width: 300, height:300)
    }
}
