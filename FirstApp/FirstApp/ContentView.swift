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
        CardView()
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}
