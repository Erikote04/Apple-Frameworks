//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 15/10/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    @State private var isShowingSheet: Bool = false
    
    var framework: Framework
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkGridCellView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            CustomButton(title: "Learn More", systemImage: "book.fill") {
                isShowingSheet = true
            }
        }
        .fullScreenCover(isPresented: $isShowingSheet) {
            WebView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
