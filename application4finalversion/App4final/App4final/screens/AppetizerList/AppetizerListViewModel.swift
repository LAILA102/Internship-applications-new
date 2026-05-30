//
//  AppetizerListViewModel.swift
//  App4final
//
//  Created by AUC on 26/05/2026.
//

//
import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        appetizers = MockData.appetizers
        isLoading = false
    }
}
