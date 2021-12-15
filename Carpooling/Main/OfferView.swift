//
//  OfferView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI

struct OfferView: View {
    
    @State var isRoundtrip: Bool = false
    
    @State var pickup: String = ""
    @State var destination: String = ""
    
    @State var brandname: String = ""
    @State var modelname: String = ""
    @State var licenseplate: String = ""
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                VStack{
                    HStack(alignment: .top) {
                        Image(systemName: "mappin.and.ellipse")
                            .padding(.top, 5.0)
                        TextField("Start location", text: $pickup)
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
                    .navigationTitle("Offer a ride")
                
                VStack {
                    Text(" Enter car details")
                        .textCase(.uppercase)
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 190)
                        .offset(y: 15)
                    VStack{
                        HStack(alignment: .top) {
                            Image(systemName: "car.fill")
                                .padding(.top, 5.0)
                            TextField("Brand Name", text: $brandname)
                                .frame(width: 300, height: 30, alignment: .center)
                                .textFieldStyle(.roundedBorder)
                        }
                        .padding(.top)
                        
                        HStack(alignment: .center) {
                            Image(systemName: "ellipsis")
                                .padding(.trailing, 4.0)
                            TextField("Model Name", text: $modelname)
                                .frame(width: 300, height: 30, alignment: .center)
                                .textFieldStyle(.roundedBorder)
                        }.padding() 
                        
                        HStack(alignment: .top) {
                            Image(systemName: "123.rectangle")
                                .padding(.top, 5.0)
                            TextField("License Plate", text: $licenseplate)
                                .frame(width: 300, height: 30, alignment: .center)
                                .textFieldStyle(.roundedBorder)
                        }.padding(.bottom)
                        
                    }.frame(width: 350, height: 150)
                        .padding()
                        .background(.ultraThinMaterial)
                        .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                        .navigationTitle("Offer a ride")
                        .position(x: 212.5, y: 100)
                }
                
                Spacer()
                
                Group{
                    NavigationLink(destination: OfferRideDetailsView()) {
                        Text("Enter details")
                    }
                    .padding()
                    .font(.system(size: 17, weight: .bold))
                    .frame(width: 370, height: 50.0)
                    .foregroundColor(.white)
                    .background(.blue)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                }
                .position(x: 212.5, y: 170)
            }
        }
    }
}


struct OfferView_Previews: PreviewProvider {
    static var previews: some View {
        OfferView()
    }
}
