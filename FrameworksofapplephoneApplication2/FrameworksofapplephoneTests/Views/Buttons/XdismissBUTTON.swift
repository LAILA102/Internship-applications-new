//
//  XdismissBUTTON.swift
//  FrameworksofapplephoneTests
//
//  Created by AUC on 20/04/2026.
//

import SwiftUI

struct XdismissBUTTON: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack {
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var Previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
