//
//  ContentView.swift
//  FirstApp
//
//  Created by 骆超然 on 2021/12/6.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20.0) {
                ForEach(cardData) { card in
                    CardView(card: card)
                }
            }
        }
        .padding(20.0)
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}
