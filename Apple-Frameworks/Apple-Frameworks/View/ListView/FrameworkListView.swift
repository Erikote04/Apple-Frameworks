//
//  FrameworkListView.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 15/10/24.
//

import SwiftUI

struct FrameworkListView: View {
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.frameworks) { framework in
                    NavigationLink {
                        FrameworkDetailView(framework: framework, isShowingCloseButton: false)
                    } label: {
                        FrameworkListRowView(framework: framework)
                    }
                }
            }
            .navigationTitle("Frameworks")
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkListView()
}
