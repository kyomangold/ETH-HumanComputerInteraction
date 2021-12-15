//
//  SearchView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI
import MapKit

struct SearchView: View {
    
    
    @State var pickup: String = ""
    @State var destination: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                VStack{
                    HStack(alignment: .top) {
                        Image(systemName: "mappin.and.ellipse")
                            .padding(.top, 5.0)
                        TextField("Pickup location", text: $pickup)
                            .frame(width: 300, height: 30, alignment: .center)
                            .textFieldStyle(.roundedBorder)
                    }
                    .padding(.top)
                    
                    HStack(alignment: .top) {
                        Image(systemName: "flag")
                            .padding(.top, 5.0)
                        TextField("Destination", text: $destination)
                            .frame(width: 300, height: 30, alignment: .center)
                            .textFieldStyle(.roundedBorder)
                    }.padding()
                }.frame(width: 350, height: 100)
                    .padding()
                    .background(.ultraThinMaterial)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                    .navigationTitle("Find a ride")
                    .position(x: 212.5, y: 100)
                
                Group{
                    NavigationLink(destination: SearchDetailsView()) {
                        Text("Continue")
                    }
                    .padding()
                    .font(.system(size: 17, weight: .bold))
                    .frame(width: 370, height: 50.0)
                    .foregroundColor(.white)
                    .background(.blue)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                }.position(x: 220, y: 290)
            }
            
        }
        .padding(.top)
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
