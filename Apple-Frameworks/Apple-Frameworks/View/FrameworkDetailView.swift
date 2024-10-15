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
    var isShowingCloseButton: Bool
    
    var body: some View {
        VStack {
            if isShowingCloseButton {
                DismissButton()
            }
            
            Spacer()
            
            FrameworkGridCellView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSheet = true
            } label: {
                CustomButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSheet) {
            WebView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingCloseButton: false)
}
