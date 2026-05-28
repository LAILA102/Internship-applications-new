//
//  AppleframworkButton.swift
//  FrameworksofapplephoneTests
//
//  Created by AUC on 20/04/2026.
//

import SwiftUI

struct AppleframworkButton: View {
    var title: String
    var body: some View {
        Text(title)
        .font(.title2)
        .fontWeight(.semibold)
        .frame(width: 280, height: 50)
        .background(Color.red)
        .foregroundColor(.white)
        .cornerRadius(18)
    }
}

#Preview {
    AppleframworkButton()
}
