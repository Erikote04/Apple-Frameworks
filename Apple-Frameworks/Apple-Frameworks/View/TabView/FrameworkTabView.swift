//
//  FrameworkTabView.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 16/10/24.
//

import SwiftUI

struct FrameworkTabView: View {
    var body: some View {
        TabView {
            FrameworkGridView()
                .tabItem {
                    Image(systemName: "square.grid.3x3.fill")
                    Text("Grid")
                }
            
            FrameworkListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("List")
                }
        }
        .tint(Color(.label))
        .onAppear {
            UITabBar.appearance().backgroundColor = .secondarySystemBackground
        }
    }
}

#Preview {
    FrameworkTabView()
}
