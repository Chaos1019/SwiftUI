//
//  CardView.swift
//  FirstApp
//
//  Created by 骆超然 on 2021/12/7.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    // MARK: - Body
    var body: some View {
        ZStack {
            Image("developer-no1")
            
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("如此美妙，不同凡响")
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            }
            .offset(y:-218.0)
        }
        .frame(width: 335.0, height: 545.0)
        .background(LinearGradient(gradient: Gradient(colors: gradient),
                                   startPoint: .top,
                                   endPoint: .bottom))
        .cornerRadius(16.0)
        .shadow(radius: 8.0)
    }
}

// MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}