//
//  AppView.swift
//  ThisIsBeijing
//
//  Created by 骆超然 on 2021/12/15.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            BeijingView()
                .tabItem {
                Image("TabIcon-Beijing")
                Text("北京")
            }
            
            FoodView()
                .tabItem {
                    Image("TabIcon-Food")
                    Text("小吃")
                }
            
            HutongView()
                .tabItem {
                    Image("TabIcon-Hutong")
                    Text("胡同")
                }
            
            SettingsView()
                .tabItem() {
                    Text("设置")
                    Image("TabIcon-Settings")
                }
        }
        .accentColor(.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AppView().preferredColorScheme(.light)
            AppView().preferredColorScheme(.dark)
        }
    }
}
