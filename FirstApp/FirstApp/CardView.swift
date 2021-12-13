//
//  CardView.swift
//  FirstApp
//
//  Created by 骆超然 on 2021/12/7.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    let card: Card
    // MARK: - Body
    var body: some View {
        ZStack {
            Image(card.imageName)
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
            .offset(y: -218.0)
            
            Button {
                print("按钮被用户点击")
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
            .offset(y: 210.0)

        }
        .frame(width: 335.0, height: 545.0)
        .background(LinearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(16.0)
        .shadow(color: Color("ColorShadow"), radius: 8.0)
    }
}

// MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[1])
            .previewLayout(.sizeThatFits)
    }
}
