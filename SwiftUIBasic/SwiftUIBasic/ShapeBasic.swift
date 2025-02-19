//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by Yoon on 2/18/25.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack(spacing:20) {
            //circle 원형
            Text("원형")
                .font(.title)
            Circle()
                // .fill(Color.red) //color 정하기
            //foregroundColor(.~~)
                // 테두리선 , 굵기
                //.stroke(Color.black,lineWidth:10)
            //StrokeStlye ( 테두리의 스타일 지정 가능 )
            //StrokeStyle(lineWidth:20, lineCap: .round, dash:[20]) lineCap은 테두리 모양 지정
            //StrokeStyle(lineWidth:20, lineCap: .round, dash:[20]) lineCap은 테두리 모양 지정 dash는 모양 사이간격
            
                .trim(from:0.2,to:1.0) // .trim 은 도형 자리는 비율에 따라 잘림
                .stroke(Color.purple,lineWidth: 30)
                .frame(width:200,height:100)
                .padding()
                
            //Ellipse 타원형
            Text("타원형")
                .font(.title)
            Ellipse()
                .fill(Color.green)
                .frame(width:200,height:100,alignment: .center)
            //캡슐형
            Text("캡슐형")
                .font(.title)
            Capsule(style: .circular)
                .stroke(Color.red,lineWidth: 20)
                .frame(width: 100,height:200)

        }
        
        VStack(spacing:20){
            
            //직사각형
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(Color.red)
                .frame(width: 100,height: 200,alignment:.center)
            
            //둥근 직사각형
            Text("둥근 직사각형")
                .font(.title)
            
            RoundedRectangle(cornerRadius: 20) //cornerRadius 는 코너에 둥근부분
                //.fill(Color.gray)
                .trim(from: 0.3,to:1.2)
                .frame(width: 200,height: 300)
        }
        
    }
}
struct ShapeBasic_Previews: PreviewProvider{
    static var previews: some View{
        ShapeBasic()
    }
}
