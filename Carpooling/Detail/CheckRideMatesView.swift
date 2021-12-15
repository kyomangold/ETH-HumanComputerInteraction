//
//  CheckRideMatesView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 07.12.21.
//

import SwiftUI

struct CheckRideMatesView: View {
    var body: some View {
        
        
        List {
            
            Section {
                NavigationLink(destination: ProfileViewDriver1()) {
                    ridemate_driver1
                }
            }
            
            Section {
                NavigationLink(destination: ProfileViewPAX1()) {
                    ridemate_pax_1
                }
            }
            
            Section {
                NavigationLink(destination: ProfileViewPAX2()) {
                    ridemate_pax_2
                }
            }
            
            Section {
                NavigationLink(destination: ProfileViewPAX3()) {
                    ridemate_pax_3
                }
            }
            
            
        }
        .listStyle(.insetGrouped)
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var ridemate_driver1: some View {
    VStack(spacing: 8) {
        HStack {
            Image("Driver")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(10)
                .padding()
                .offset(x: -22.5)
            
            VStack {
                Text("John")
                    .font(.title.weight(.semibold))
                    .padding()
                
                HStack {
                    Image(systemName: "star.fill")
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                    Text("4.9")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                }.offset(y: -10)
            }
            
        }
        
        Spacer()
        
        Group{
            VStack{
                HStack (spacing: 15) {
                    Image(systemName: "heart.fill")
                        .padding(.horizontal)
                    Text("Movies, Food, Travel")
                }.position(x: 160)
                HStack {
                    Image(systemName: "dollarsign.square")
                        .padding(.horizontal,24)
                    Text("CHF 7.50")
                }.position(x: 113)
                HStack {
                    Image(systemName: "person.3")
                        .padding(.horizontal, 14)
                    Text("2 of 4 seats available")
                }.position(x: 158)
                
            }.frame(alignment: .leading)
        }
    }
    .frame(maxWidth: .infinity)
    .padding()
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var ridemate_pax_1: some View {
    VStack(spacing: 8) {
        HStack {
            Image("PAX_1")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(10)
                .padding()
                .offset(x: -22.5)
            
            VStack {
                Text("Nina")
                    .font(.title.weight(.semibold))
                    .padding()
                
                HStack {
                    Image(systemName: "star.fill")
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                    Text("4.9")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                }.offset(y: -10)
            }
            
        }
        
        Spacer()
        
        Group{
            VStack{
                HStack (spacing: 15) {
                    Image(systemName: "heart.fill")
                        .padding(.horizontal)
                    Text("Movies, Food, Travel")
                }.position(x: 160)
                HStack {
                    Image(systemName: "dollarsign.square")
                        .padding(.horizontal,24)
                    Text("CHF 7.50")
                }.position(x: 113)
                HStack {
                    Image(systemName: "person.3")
                        .padding(.horizontal, 14)
                    Text("2 of 4 seats available")
                }.position(x: 158)
                
            }.frame(alignment: .leading)
        }
    }
    .frame(maxWidth: .infinity)
    .padding()
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var ridemate_pax_2: some View {
    VStack(spacing: 8) {
        HStack {
            Image("PAX_2")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(10)
                .padding()
                .offset(x: -16)
            
            VStack {
                Text("Ben")
                    .font(.title.weight(.semibold))
                    .padding()
                
                HStack {
                    Image(systemName: "star.fill")
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                    Text("4.9")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                }.offset(y: -10)
            }
            
        }
        
        Spacer()
        
        Group{
            VStack{
                HStack (spacing: 15) {
                    Image(systemName: "heart.fill")
                        .padding(.horizontal)
                    Text("Movies, Food, Travel")
                }.position(x: 160)
                HStack {
                    Image(systemName: "dollarsign.square")
                        .padding(.horizontal,24)
                    Text("CHF 7.50")
                }.position(x: 113)
                HStack {
                    Image(systemName: "person.3")
                        .padding(.horizontal, 14)
                    Text("2 of 4 seats available")
                }.position(x: 158)
                
            }.frame(alignment: .leading)
        }
    }
    .frame(maxWidth: .infinity)
    .padding()
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var ridemate_pax_3: some View {
    VStack(spacing: 8) {
        HStack {
            Image("PAX_3")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(10)
                .padding()
                .offset(x: -24)
            
            VStack {
                Text("Sarah")
                    .font(.title.weight(.semibold))
                    .padding()
                
                HStack {
                    Image(systemName: "star.fill")
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                    Text("4.8")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                }.offset(y:-10)
            }
            
        }
        
        Spacer()
        
        Group{
            VStack{
                HStack (spacing: 15) {
                    Image(systemName: "heart.fill")
                        .padding(.horizontal)
                    Text("Movies, Food, Travel")
                }.position(x: 160)
                HStack {
                    Image(systemName: "dollarsign.square")
                        .padding(.horizontal,24)
                    Text("CHF 7.50")
                }.position(x: 113)
                HStack {
                    Image(systemName: "person.3")
                        .padding(.horizontal, 14)
                    Text("2 of 4 seats available")
                }.position(x: 158)
                
            }.frame(alignment: .leading)
        }
    }
    .frame(maxWidth: .infinity)
    .padding()
}
struct CheckRideMatesView_Previews: PreviewProvider {
    static var previews: some View {
        CheckRideMatesView()
    }
}
