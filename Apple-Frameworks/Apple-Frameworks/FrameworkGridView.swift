//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 15/10/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkViewModel()
    
    let frameworks = MockData.frameworks
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(frameworks) { framework in
                        FrameworkGridCellView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
