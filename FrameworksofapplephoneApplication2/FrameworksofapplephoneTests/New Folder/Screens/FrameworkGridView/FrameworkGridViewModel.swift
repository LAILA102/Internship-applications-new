//
//  FrameworkGridModel.swift
//  FrameworksofapplephoneTests
//
//  Created by AUC on 20/04/2026.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {

    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }

    @Published var isShowingDetailView = false
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
