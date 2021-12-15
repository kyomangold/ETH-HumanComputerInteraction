//
//  RideSelectionView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 05.12.21.
//

import SwiftUI

struct RideSelectionView: View {
    
    @State private var favFilter = "Suggested"
        var colors = ["Suggested", "Rating", "Price", "Connection"]
    
    var body: some View {

        VStack {
            
            Picker("", selection: $favFilter) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                        .padding(.horizontal)
            
            List {
                Section {
                    NavigationLink(destination: ProfileViewDriver1()) {
                        driver1
                    }
                }
                
                Section {
                    NavigationLink(destination: ProfileViewDriver2()) {
                        driver2
                    }
                }
                
                Section {
                    NavigationLink(destination: ProfileViewDriver3()) {
                        driver3
                    }
                }
                
                Section {
                    NavigationLink(destination: ProfileViewDriver4()) {
                        driver4
                    }
                }
                
                Section {
                    NavigationLink(destination: ProfileViewDriver5()) {
                        driver5
                    }
                }
                
                Section {
                    NavigationLink(destination: ProfileViewDriver6()) {
                        driver6
                    }
                }
                
                Section {
                    NavigationLink(destination: ProfileViewDriver7()) {
                        driver7
                    }
                }
            }
            .listStyle(.insetGrouped)
        }
    }
}


var driver1: some View {
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
                    Text("Formula 1, Books")
                }.position(x: 146)
                HStack {
                    Image(systemName: "dollarsign.square")
                        .padding(.horizontal,24)
                    Text("CHF 7.50")
                }.position(x: 113)
                HStack {
                    Image(systemName: "person.3")
                        .padding(.horizontal, 14)
                    Text("1 of 4 seats available")
                }.position(x: 158)
                
            }.frame(alignment: .leading)
        }
    }
    .frame(maxWidth: .infinity)
    .padding()
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var driver2: some View {
    VStack(spacing: 8) {
        HStack {
            Image("Driver2")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(10)
                .padding()
                .offset(x: -16)
            
            VStack {
                Text("Isabel")
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
                    Text("Movies, TV Series")
                }.position(x: 148)
                HStack {
                    Image(systemName: "dollarsign.square")
                        .padding(.horizontal,24)
                    Text("CHF 8.20")
                }.position(x: 113)
                HStack {
                    Image(systemName: "person.3")
                        .padding(.horizontal, 14)
                    Text("3 of 4 seats available")
                }.position(x: 158)
                
            }.frame(alignment: .leading)
        }
    }
    .frame(maxWidth: .infinity)
    .padding()
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var driver3: some View {
    VStack(spacing: 8) {
        HStack {
            Image("Driver3")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(10)
                .padding()
                .offset(x: -24)
            
            VStack {
                Text("Mike")
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
                    Text("Karaoke, Running")
                }.position(x: 147)
                HStack {
                    Image(systemName: "dollarsign.square")
                        .padding(.horizontal,24)
                    Text("CHF 8.00")
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
var driver4: some View {
    VStack(spacing: 8) {
        HStack {
            Image("Driver4")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(10)
                .padding()
                .offset(x: -28)
            
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
                }.offset(y:-10)
            }
            
        }
        
        Spacer()
        
        Group{
            VStack{
                HStack (spacing: 15) {
                    Image(systemName: "heart.fill")
                        .padding(.horizontal)
                    Text("Traveling, Photography")
                }.position(x: 169)
                HStack {
                    Image(systemName: "dollarsign.square")
                        .padding(.horizontal,24)
                    Text("CHF 7.60")
                }.position(x: 113)
                HStack {
                    Image(systemName: "person.3")
                        .padding(.horizontal, 14)
                    Text("1 of 3 seats available")
                }.position(x: 158)
                
            }.frame(alignment: .leading)
        }
    }
    .frame(maxWidth: .infinity)
    .padding()
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var driver5: some View {
    VStack(spacing: 8) {
        HStack {
            Image("Driver5")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(10)
                .padding()
                .offset(x: -19.5)
            
            VStack {
                Text("Kevin")
                    .font(.title.weight(.semibold))
                    .padding()
                
                HStack {
                    Image(systemName: "star.fill")
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                    Text("4.7")
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
                    Text("Food, Video Games")
                }.position(x: 155)
                HStack {
                    Image(systemName: "dollarsign.square")
                        .padding(.horizontal,24)
                    Text("CHF 9.30")
                }.position(x: 113)
                HStack {
                    Image(systemName: "person.3")
                        .padding(.horizontal, 14)
                    Text("3 of 3 seats available")
                }.position(x: 158)
                
            }.frame(alignment: .leading)
        }
    }
    .frame(maxWidth: .infinity)
    .padding()
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var driver6: some View {
    VStack(spacing: 8) {
        HStack {
            Image("Driver6")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(10)
                .padding()
                .offset(x: -24)
            
            VStack {
                Text("Luke")
                    .font(.title.weight(.semibold))
                    .padding()
                
                HStack {
                    Image(systemName: "star.fill")
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                    Text("4.6")
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
                    Text("Basketball, TikTok")
                }.position(x: 149)
                HStack {
                    Image(systemName: "dollarsign.square")
                        .padding(.horizontal,24)
                    Text("CHF 7.10")
                }.position(x: 111)
                HStack {
                    Image(systemName: "person.3")
                        .padding(.horizontal, 15)
                    Text("2 of 4 seats available")
                }.position(x: 158)
                
            }.frame(alignment: .leading)
        }
    }
    .frame(maxWidth: .infinity)
    .padding()
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var driver7: some View {
    VStack(spacing: 8) {
        HStack {
            Image("Driver7")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(10)
                .padding()
                .offset(x: -15)
            
            VStack {
                Text("Emma")
                    .font(.title.weight(.semibold))
                    .padding()
                
                HStack {
                    Image(systemName: "star.fill")
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                    Text("4.6")
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
                    Text("Drinks, Sunsets, Cats")
                }.position(x: 163)
                HStack {
                    Image(systemName: "dollarsign.square")
                        .padding(.horizontal,24)
                    Text("CHF 7.50")
                }.position(x: 113)
                HStack {
                    Image(systemName: "person.3")
                        .padding(.horizontal, 14)
                    Text("1 of 1 seats available")
                }.position(x: 158)
                
            }.frame(alignment: .leading)
        }
    }
    .frame(maxWidth: .infinity)
    .padding()
}


struct RideSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        RideSelectionView()
    }
}
