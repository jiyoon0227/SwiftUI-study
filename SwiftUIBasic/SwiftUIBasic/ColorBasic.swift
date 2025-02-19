//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by Yoon on 2/19/25.
//

import SwiftUI


struct ColorBasic: View {
    var body: some View {
        VStack(spacing:20) {
            
            //basic Color
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray)
                .frame(width: 300,height: 100,alignment: .center)
            
            //Primary Color
            // 자동으로 다크모드 색 지원
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.primary)    //primary  vs  secondary
                .frame(width: 300,height: 100,alignment: .center)
            
            //UI Color - 기본적으로 UI 키트에서 사용되는 color 값을 사용 가능함
            Text("UI Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor.systemBackground))
                .frame(width: 300,height: 100)
            
            //Custom Color - 사용자가 직접 색을 표현할 때 사용
            Text("Custom Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color("CustomColor"))
                .frame(width: 300,height: 100,alignment: .center)
        }
        .padding()
    }
}

#Preview {
    ColorBasic()
        //.preferredColorScheme(.dark)     다크 모드일 때 색 바뀌는 등등 지원해줌 .dark / .light
}
