//
//  FrameworkViewModel.swift
//  Apple-Frameworks
//
//  Created by Erik Sebastian de Erice Jerez on 15/10/24.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {
    @Published var isShowingDetailView: Bool = false
    
    let frameworks = MockData.frameworks
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
}
