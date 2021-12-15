//
//  BeijingView.swift
//  ThisIsBeijing
//
//  Created by 骆超然 on 2021/12/15.
//

import SwiftUI

struct BeijingView: View {
    // MARK: - Propreties
    @State private var pulsateAnimation = false
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            Image("Beijing-Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 240.0, height: 240.0, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12.0, x: 0, y: 8.0)
                .scaleEffect(pulsateAnimation ? 1.0 : 0.9)
                .opacity(pulsateAnimation ? 1.0 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            VStack {
                Text("这里是北京")
                    .font(.system(size: 42.0, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4.0, x: 0, y: 4.0)
                Text("北京，是一座朴实亲切而又大气磅礴的城市。既能海纳百川，又有自己独特的风姿，既能独树一帜，又不孤芳自赏。")
                    .lineLimit(nil)
                    .font(.headline)
                    .foregroundColor(Color("ColorBrown"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8.0)
                    .padding(.horizontal, 20.0)
                    .frame(maxWidth: 640.0, minHeight: 120.0)
            }
            .padding()
            Spacer()
        }
        .background(
            Image("Background")
                .resizable()
                .scaledToFill()
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            pulsateAnimation.toggle()
        }
    }
}

struct BeijingView_Previews: PreviewProvider {
    static var previews: some View {
        BeijingView().preferredColorScheme(.light)
    }
}
