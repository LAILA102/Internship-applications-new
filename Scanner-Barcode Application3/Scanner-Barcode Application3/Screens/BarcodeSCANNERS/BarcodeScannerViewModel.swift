//
//  BarcodeScannerViewModel.swift
//  Scanner-Barcode Application3
//
//  Created by AUC on 10/05/2026.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published private var scannedCode = ""
    @Published private var alertItem: AlertItem?
    var statusText: String {
        scannedCode.isEmpty ? "Not yet scanned" : scannedCode}
    
    var ststusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
        
    }
}
