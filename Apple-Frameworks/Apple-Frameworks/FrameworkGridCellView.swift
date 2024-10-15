//
//  FrameworkGridCellView.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 15/10/24.
//

import SwiftUI

struct FrameworkGridCellView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
}

#Preview {
    FrameworkGridCellView(
        framework: Framework(
            name: "App Clips",
            imageName: "app-clip",
            urlString: "",
            description: "")
    )
}
