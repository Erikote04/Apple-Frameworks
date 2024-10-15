//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 15/10/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Environment(\.dismiss) var dismiss
    @State private var isShowingWebView: Bool = false
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            
            Spacer()
            
            FrameworkGridCellView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingWebView = true
            } label: {
                FrameworkButtonView(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingWebView) {
            WebView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
