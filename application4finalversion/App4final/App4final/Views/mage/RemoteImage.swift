//
//  RemoteImage.swift
//  App4final
//
//  Created by AUC on 26/05/2026.
//

import SwiftUI

struct RemoteImage: View {
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct AppetizerRemoteImage: View {
    let urlString: String
    
    var body: some View {
        if let uiImage = UIImage(named: urlString) {
            // loads from local Assets catalog
            Image(uiImage: uiImage)
                .resizable()
        } else {
            Image("food-placeholder")
                .resizable()
        }
    }
}
