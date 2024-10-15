//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 15/10/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Environment(\.dismiss) var dismiss
    
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
