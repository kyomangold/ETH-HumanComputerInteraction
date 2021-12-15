//
//  Tab.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI

struct TabItem: Identifiable {
    let id = UUID()
    var name: String
    var icon: String
    var color: Color
    var selection: Tab
}

var tabItems = [
    TabItem(name: "Find", icon: "magnifyingglass", color: .blue, selection: .find),
    TabItem(name: "Offer", icon: "car", color: .blue, selection: .offer),
    TabItem(name: "Forest", icon: "leaf", color: .blue, selection: .forest),
    TabItem(name: "Account", icon: "person", color: .blue, selection: .account)
]

enum Tab: String {
    case find
    case offer
    case forest
    case account
}
