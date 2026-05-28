//
//  Scanner_Barcode_Application3App.swift
//  Scanner-Barcode Application3
//
//  Created by AUC on 10/05/2026.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewmodel = BarcodeScannerViewModel()

    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer().frame(height: 60)
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()
              
            }
            .navigationTitle("Barcode Scanner")
           // .alert (isPresented: $isShowingAlert, content: {
              //  Alert(title: Text("Test"), message: Text("This is a test"), dismissButton: .default(Text("ok")))
           // })
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
