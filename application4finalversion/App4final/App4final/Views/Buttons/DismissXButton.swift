//
//  DismissXButton.swift
//  App4final
//
//  Created by AUC on 26/05/2026.
//

import SwiftUI


struct DismissXButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundColor(.black)
        }
    }
}


struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        DismissXButton()
    }
}
