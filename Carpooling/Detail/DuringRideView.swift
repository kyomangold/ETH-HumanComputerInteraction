//
//  DuringRideView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 07.12.21.
//

import SwiftUI
import MapKit

struct DuringRideView: View {
    
    @StateObject private var viewModel = MapViewModel()
    
    var body: some View {
        VStack(spacing: 8) {
            Spacer()
            HStack{
                VStack{
                    Text("10:30").bold()
                        .padding(.bottom, 1.0)
                        .font(.system(size: 35))
                    Text("Arrival")
                }.padding()
                
                VStack{
                    Text("21").bold()
                        .padding(.bottom, 1.0)
                        .font(.system(size: 35))
                    Text("Minutes to go")
                }.padding().offset(x:-20)
                
                VStack{
                    Text("2").bold()
                        .padding(.bottom, 1.0)
                        .font(.system(size: 35))
                    Text("Stops")
                }.padding().offset(x:-20)
            }
            .frame(width: 356)
            .background(.ultraThinMaterial)
            .backgroundStyle(cornerRadius: 14, opacity: 0.4)
            
            VStack{
                Text("You are sharing a ride with:").bold().padding(.top)
                NavigationLink(destination: CheckRideMatesView()) {
                    HStack{
                        VStack{
                            Image("Driver")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .backgroundStyle(cornerRadius: 5, opacity: 0.4)
                            Text("John").foregroundColor(.primary)
                        }
                        VStack{
                            Image("PAX_1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .backgroundStyle(cornerRadius: 5, opacity: 0.4)
                            Text("Nina").foregroundColor(.primary)
                        }
                        VStack{
                            Image("PAX_2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .backgroundStyle(cornerRadius: 5, opacity: 0.4)
                            Text("Ben").foregroundColor(.primary)
                        }
                        VStack{
                            Image("PAX_3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .backgroundStyle(cornerRadius: 5, opacity: 0.4)
                            Text("Sarah").foregroundColor(.primary)
                        }
                        
                    }
                    .padding(.bottom)
                }
            }
            .frame(width: 356)
            .background(.ultraThinMaterial)
            .backgroundStyle(cornerRadius: 14, opacity: 0.4)
            .padding()
            
            
            
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                .frame(width: 356, height: 256, alignment: .center)
                .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                .padding()
            
            
            
            Group{
                NavigationLink(destination: CheckOutPaymentView()) {
                    Text("Check-out")
                }.navigationBarBackButtonHidden(true)
                .font(.system(size: 17, weight: .bold))
                .frame(width: 370, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
            }
            Spacer()
        }
    }
}

struct DuringRideView_Previews: PreviewProvider {
    static var previews: some View {
        DuringRideView()
    }
}
