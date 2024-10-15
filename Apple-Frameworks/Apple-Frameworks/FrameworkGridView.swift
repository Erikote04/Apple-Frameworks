//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 15/10/24.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            FrameworkGridCellView(name: "App Clips", imageName: "app-clip")
            FrameworkGridCellView(name: "App Clips", imageName: "app-clip")
            FrameworkGridCellView(name: "App Clips", imageName: "app-clip")
            FrameworkGridCellView(name: "App Clips", imageName: "app-clip")
            FrameworkGridCellView(name: "App Clips", imageName: "app-clip")
            FrameworkGridCellView(name: "App Clips", imageName: "app-clip")
            FrameworkGridCellView(name: "App Clips", imageName: "app-clip")
            FrameworkGridCellView(name: "App Clips", imageName: "app-clip")
            FrameworkGridCellView(name: "App Clips", imageName: "app-clip")
        }
    }
}

#Preview {
    FrameworkGridView()
}
