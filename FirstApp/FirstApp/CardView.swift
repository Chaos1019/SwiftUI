//
//  CardView.swift
//  FirstApp
//
//  Created by 骆超然 on 2021/12/7.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    @State private var fadeIn = false
    @State private var moveDownard = false
    @State private var moveUpward = false
    
    let card: Card
    // MARK: - Body
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)

            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            }
            .offset(y: moveDownard ? -218.0 : -300.0)
            
            Button {
                playSound(sound: "sound-transitions", type: "mp3")
            } label: {
                HStack {
                    Text(card.callToAction)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .tint(.white)
                      
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24.0)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 5.0, x: 0, y: 3.0)
            }
            .offset(y: moveUpward ? 210.0 : 300.0)
            
        }
        .frame(width: 335.0, height: 545.0)
        .background(LinearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(16.0)
        .shadow(color: Color("ColorShadow"), radius: 8.0)
        .onAppear {
            withAnimation(.linear(duration: 1.2)) {
                fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                moveDownard.toggle()
                moveUpward.toggle()
            }
        }
    }
}


// MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[1])
            .previewLayout(.sizeThatFits)
    }
}
