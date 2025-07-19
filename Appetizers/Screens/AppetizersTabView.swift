//
//  ContentView.swift
//  Appetizers
//
//  Created by Mehmet Güngörmüş on 14.07.25.
//

import SwiftUI

struct AppetizersTabView: View {
    var body: some View {
        TabView {
            AppetizersListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(.brandPrimarySwiftUI)
    }
}

#Preview {
    AppetizersTabView()
}
