//
//  ContentView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: Model
    @AppStorage("selectedTab") var selectedTab: Tab = .find
    @AppStorage("showAccount") var showAccount = false
    
    init() {
        showAccount = false
    }
    
    var body: some View {
        ZStack {
            Group {
                switch selectedTab {
                case .find:
                    FindView()
                case .offer:
                    OfferView()
                case .forest:
                    ForestView()
                case .account:
                    AccountView()
                }
            }
            .safeAreaInset(edge: .bottom) {
                VStack {}.frame(height: 44)
            }
            
            TabBar()
        }
        .dynamicTypeSize(.large ... .xxLarge)
        .sheet(isPresented: $showAccount) {
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
