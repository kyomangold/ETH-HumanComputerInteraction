//
//  ProfileViewDriver4.swift
//  Carpooling
//
//  Created by Kyo Mangold on 06.12.21.
//

import SwiftUI

struct ProfileViewDriver4: View {
    
    @State private var showingAlert = false
    @State private var goToNextView = false
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Image("Driver4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150, alignment: .leading)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .offset(x: -22.5, y: -20)
                
                VStack {
                    Text("Lisa")
                        .font(.title.weight(.semibold))
                        .padding()
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .imageScale(.medium)
                            .foregroundColor(.yellow)
                        Text("4.8")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                    }.offset(y: -10)
                }.offset(y: -20)
                
            }
            
            Group{
                VStack {
                    VStack {
                        HStack {
                            Image(systemName: "dollarsign.square")
                                .padding(.horizontal,21.0)
                            Text("CHF 7.60")+Text(" (estimated price)").foregroundColor(.gray)
                        }.position(x: 179, y: 25)
                        HStack {
                            Image(systemName: "person.3")
                                .padding(.horizontal, 13.0)
                            Text("1 of 3 seats available")
                        }.position(x: 156,y: 20)
                        HStack (spacing: 20) {
                            Image(systemName: "suitcase")
                                .padding(.horizontal, 8.0)
                            Text("S and M luggage")
                        }.position(x: 147, y: 15)
                    }
                    .frame(width: 356, height: 150)
                    .background(.ultraThinMaterial)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                    
                    VStack{
                        HStack {
                            Image(systemName: "quote.bubble.fill")
                                .padding(.horizontal,22.0)
                            Text("I'd love to go on a world trip!")
                        }.position(x: 184, y: 40)
                        
                        HStack {
                            Image(systemName: "heart.fill")
                                .padding(.horizontal, 20.0)
                            Text("Traveling, Photography")
                        }.position(x: 165, y: 30)
                        HStack {
                            Image(systemName: "briefcase.fill")
                                .padding(.horizontal, 19.0)
                            Text("Student")
                        }.position(x: 108, y: 20)
                        
                        HStack {
                            Image(systemName: "music.note")
                                .padding(.horizontal, 23.0)
                            Text("Shivers by Ed Sheeran")
                        }.position(x: 163, y: 20)
                        HStack {
                            Image(systemName: "figure.stand.line.dotted.figure.stand")
                                .padding(.horizontal, 14)
                            Text("You have a some common\nfriends on social media!")
                        }.position(x: 180, y: 20)
                    }
                    .frame(width: 356, height: 350)
                    .background(.ultraThinMaterial)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                }
            }
            
            Group{
                NavigationLink(destination: OnTheWayView()) {
                    Text("Join ride")
                }
                .font(.system(size: 17, weight: .bold))
                .frame(width: 370, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .backgroundStyle(cornerRadius: 14, opacity: 0.4)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct ProfileViewDriver4_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewDriver4()
    }
}
