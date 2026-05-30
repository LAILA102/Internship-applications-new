//
//  ContentView.swift
//  App4final
//
//  Created by AUC on 26/05/2026.
//

import SwiftUI


struct AppetizerTabVieww: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerList()
                .tabItem { Label("Home", systemImage: "house") }
            
            Account()
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderV()
                .tabItem { Label("Order", systemImage: "bag") }
               // .badge(order.items.count)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabVieww()
            .environmentObject(Order())
    }
}
