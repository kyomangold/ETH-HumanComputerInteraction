//
//  NavigationBar.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI

struct NavigationBar: View {
    
    @State var showSheet = false
    
    var body: some View {
        
        
        HStack {
            Button {
                showSheet.toggle()
            } label: {
                HStack {
                    Image(systemName: "magnifyingglass")
                    Text("Enter destination")
                }
                .font(.system(size: 17, weight: .bold))
                .frame(width: 242, height: 50)
                .foregroundColor(.secondary)
                .background(.ultraThinMaterial)
                .backgroundStyle(cornerRadius: 14, opacity: 0.4)
            }
        }
        .sheet(isPresented: $showSheet) {
            SearchView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding()
    }
}


struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
