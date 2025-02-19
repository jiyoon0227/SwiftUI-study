//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by Yoon on 2/18/25.
//

import SwiftUI


// View 안에는 body가 있고 some View 안에 그려질 이미지나 텍스트 삽입
struct TextBasic: View {
    var body: some View {

// Vstack 이란  한 화면의 부분 안에 여러 이미지나 텍스트 삽입할 때 사용
        VStack(spacing:20) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
// spacing : 00  이란 텍스트 사이의 간격
            Text("Hello, world!")
// Font 사이즈를 title, body, footnote 등으로 --> .font(.~~)
// Font 굵기    --> .fontWeight(.~~)
// 밑줄긋기      --> .underline()
                .font(.title)
                .fontWeight(.bold)
                .underline(color:Color.gray) // 색상 변경 -->color:Color.~~
                .italic()   //글자 폰트
            
            
            
 //text의 크기를 지정하는 방법 . 단점은 고정된다는 것
            // uppercased() 란 모두 대문자로 표현
            Text("Welcome to my SwiftUI !".uppercased())
                .font(.system(size:24,weight: .bold,design: .serif))
            
 //multiline text alignment --> 여러 줄 정렬
            Text("SwiftUI 에 필요한 기본 text 문법입니다. SwiftUI 에 필요한 기본 text 문법입니다. SwiftUI 에 필요한 기본 text 문법입니다. SwiftUI 에 필요한 기본 text 문법입니다. SwiftUI 에 필요한 기본 text 문법입니다. SwiftUI 에 필요한 기본 text 문법입니다.").multilineTextAlignment(.leading)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    TextBasic()
}
