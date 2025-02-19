//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by Yoon on 2/19/25.
//

import SwiftUI


struct GradientBasic: View {
    var body: some View {
        VStack(spacing:20) {
            //Linear Gradient 선형 그라데이션
            Text("Linear Gradient")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(gradient:Gradient(colors:                      [Color.red,Color.blue]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomLeading)
                    )
                .frame(width: 300,height: 200,alignment: .center)
            
            //Radial Gradient  원형 그라데이션
            Text("Radial Gradient")
                .font(.title)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(RadialGradient(gradient: Gradient(colors:         [Color.yellow,Color.purple]),
                           center:.leading,
                           startRadius: 20,
                           endRadius: 300)
                    )
                .frame(width: 300,height: 200,alignment: .center)
              
            //Angular Gradient 각도 그라데이션
            Text("Angular Gradient")
                .font(.title)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors:                   [Color.blue,Color.green]),
                                      center: .topLeading,
                                      angle: .degrees(40))
                    )
                .frame(width: 300,height: 200,alignment: .center)
              
        }
        .padding()
    }
}

#Preview {
    GradientBasic()
}
