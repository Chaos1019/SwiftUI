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
        VStack(alignment: .center, spacing: 0) {
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                Text(card.headline)
            }
            .foregroundColor(.white)
            Image(card.imageName)
        }
        .cornerRadius(16.0)
//        .shadow(color: Color("ColorShadow"), radius: 8.0)
        .background(LinearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom))
    }
}

// MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[1])
            .previewLayout(.sizeThatFits)
    }
}
