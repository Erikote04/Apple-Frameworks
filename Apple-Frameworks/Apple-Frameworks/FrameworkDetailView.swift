//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 15/10/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkGridCellView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
               // more code to come
            } label: {
                FrameworkButtonView(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
