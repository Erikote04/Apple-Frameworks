//
//  FrameworkButtonView.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 15/10/24.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var systemImage: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Label(title, systemImage: systemImage)
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .tint(.red)
        .padding()
    }
}

#Preview {
    CustomButton(title: "Learn More", systemImage: "book.fill", action: { })
}
