//
//  ALERT.swift
//  Scanner-Barcode Application3
//
//  Created by AUC on 10/05/2026.
//

import SwiftUI

struct AlertItem: Identifiable{
let id = UUID()
let title: String
let message: String
let dismissButton: Alert.Button
}

struct AlertContext {
static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
message: "Something went wrong with the cam. We are unable to capture the input given",
dismissButton: .default(Text("OK")))

static let invalidScannedType = AlertItem(title: "Invalid Scan Type",
message: "The value scanned is not valid. the app supports scans EAN-8 and EAN-13.",
dismissButton: .default(Text("OK")))
}
