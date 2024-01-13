//
//  AccountView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    @State var isPinned = false
    
    
    var body: some View {
        NavigationView {
            List {
                profile
                
                bio
                
                rides
                
                menu
                
                links
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
    
    
    var profile: some View {
        VStack(spacing: 8) {
            Image(systemName: "person.crop.circle.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(
                    HexagonView()
                        .offset(x: -50, y: -100)
                )
                .background(
                    BlobView()
                        .offset(x: 200, y: 0)
                        .scaleEffect(0.6)
                )
            Text("John Appleseed")
                .font(.title.weight(.semibold))
            HStack {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
                Text("4.9")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
    
    var bio: some View {
        Section{
            NavigationLink{ BioView() } label: {
                Label("Bio", systemImage: "person.text.rectangle")
            }
        }
        .accentColor(.primary)
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
    }
    
    var rides: some View {
        Section{
            NavigationLink{ UpcomingRidesView() } label: {
                Label("Upcoming Rides", systemImage: "location.north.line")
            }
            NavigationLink{ PastRidesView() } label: {
                Label("Past Rides", systemImage: "clock.arrow.circlepath")
            }
        }
        .accentColor(.primary)
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
    }
    
 
    var menu: some View{
        Section {
            NavigationLink(destination: SettingsView()) {
                Label("Settings", systemImage: "gear")
            }
            
            NavigationLink { BillingView() } label: {
                Label("Payment & Billing", systemImage: "creditcard")
            }
            
            NavigationLink { HelpView() } label: {
                Label("Help", systemImage: "questionmark")
            }
        }
        .accentColor(.primary)
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
    }
    
    var links: some View{
        Section {
            if isDeleted == false {
                Link(destination: URL(string: "https://hci.ethz.ch")!) {
                    HStack {
                        Label("Human Computer Interaction", systemImage: "laptopcomputer.and.iphone")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.secondary)
                    }
                }
                .swipeActions(edge: .leading, allowsFullSwipe: true) {
                    Button(action: { isDeleted = true }) {
                        Label("Delete", systemImage: "trash")
                    }
                    .tint(.red)
                   
                }
            }
            
            Link(destination: URL(string: "https://ethz.ch/en.html")!) {
                HStack {
                    Label("ETH Zurich", systemImage: "graduationcap")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
            .swipeActions{
                pinButton
            }
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)
    }
    
    var pinButton: some View {
        Button { isPinned.toggle() } label: {
            if isPinned{
                Label("Unpin", systemImage: "pin.slash")
            } else {
                Label("Pin", systemImage: "pin")
            }
        }
        .tint(isPinned ? .gray : .yellow)
    }
    
    
    
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
