//
//  Card.swift
//  FirstApp
//
//  Created by 骆超然 on 2021/12/9.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
