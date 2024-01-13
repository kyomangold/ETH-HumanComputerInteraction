//
//  UpcomingRidesView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 15.12.21.
//

import SwiftUI

struct UpcomingRidesView: View {
    var body: some View {
        HStack (alignment: .center) {
            VStack(alignment: .leading){
                HStack(alignment: .center) {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Home").bold()
                }
                .padding(.vertical)
                
                HStack(alignment: .center) {
                    Image(systemName: "flag")
                    Text("Solothurn").bold()
                }
                .padding(.vertical)
            }.padding(.horizontal)
                .position(x: 77, y: 60)
            
            VStack (alignment: .leading){
                
                HStack(alignment: .center) {
                    Image(systemName: "calendar")
                    Text("24 Dec 2021")
                }.padding(.top)
                
                HStack(alignment: .center) {
                    Image(systemName: "clock")
                    Text("14:30 - 15:38")
                }.padding(.vertical)
                
                HStack(alignment: .center) {
                    Image(systemName: "dollarsign.square")
                    Text("CHF 12.40")
                }
                .padding(.bottom)
            }.padding(.trailing, 20.0)
            
        }.frame(width: 350, height: 120)
            .padding()
            .background(.ultraThinMaterial)
            .backgroundStyle(cornerRadius: 14, opacity: 0.4)
        .navigationTitle("Upcoming rides")
        .padding(.vertical)
        
        Spacer()

    }
}

struct UpcomingRidesView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingRidesView()
    }
}
