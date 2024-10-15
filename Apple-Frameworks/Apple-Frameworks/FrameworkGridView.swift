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
    
    let frameworks = MockData.frameworks
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(frameworks) { framework in
                FrameworkGridCellView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
