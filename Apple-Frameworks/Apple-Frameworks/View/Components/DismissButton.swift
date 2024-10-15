//
//  DismissButton.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 15/10/24.
//

import SwiftUI

struct DismissButton: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
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
    }
}

#Preview {
    DismissButton()
}
