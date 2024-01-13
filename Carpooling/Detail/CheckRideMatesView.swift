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
                HStack {
                    Image(systemName: "heart.fill")
                        .padding(.horizontal, 20.0)
                    Text("Formula 1, Books")
                }.position(x: 140, y: 0)
                HStack {
                    Image(systemName: "briefcase.fill")
                        .padding(.horizontal, 19.0)
                    Text("Teacher")
                }.position(x: 105, y: 20)
            }.frame(alignment: .leading)
                .padding(.bottom, 25)
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
                HStack {
                    Image(systemName: "heart.fill")
                        .padding(.horizontal, 20.0)
                    Text("Football, Pop Music")
                }.position(x: 150, y: 0)
                HStack {
                    Image(systemName: "briefcase.fill")
                        .padding(.horizontal, 19.0)
                    Text("Gym Teacher")
                }.position(x: 125, y: 20)
            }.frame(alignment: .leading)
                .padding(.bottom, 25)
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
                    Text("4.7")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                }.offset(y: -10)
            }
            
        }
        
        Spacer()
        
        Group{
            VStack{
                HStack {
                    Image(systemName: "heart.fill")
                        .padding(.horizontal, 20.0)
                    Text("Climbing, Hiking, Gaming")
                }.position(x: 171, y: 0)
                HStack {
                    Image(systemName: "briefcase.fill")
                        .padding(.horizontal, 19.0)
                    Text("Journalist")
                }.position(x: 112, y: 20)
                
            }.frame(alignment: .leading)
                .padding(.bottom, 25)
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
                HStack {
                    Image(systemName: "heart.fill")
                        .padding(.horizontal, 20.0)
                    Text("Rock Concerts, Travel")
                }.position(x: 158.5, y: 0)
                HStack {
                    Image(systemName: "briefcase.fill")
                        .padding(.horizontal, 19.0)
                    Text("Software Engineer")
                }.position(x: 145, y: 20)
                    
                
            }.frame(alignment: .leading)
                .padding(.bottom, 25)
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
