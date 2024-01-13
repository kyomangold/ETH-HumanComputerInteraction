//
//  PastRidesView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 14.12.21.
//

import SwiftUI

struct PastRidesView: View {
    
    @State var pickup: String = ""
    @State var destination: String = ""
    
    @State private var favFilter = "All"
        var colors = ["All", "Week", "Month", "Year"]
    
    var body: some View {
        
        
        ScrollView {
            VStack {
                Picker("", selection: $favFilter) {
                                ForEach(colors, id: \.self) {
                                    Text($0)
                                }
                            }
                            .pickerStyle(.segmented)
                            .padding(25.0)

                
                HStack {
                    VStack(alignment: .leading){
                        HStack(alignment: .center) {
                            Image(systemName: "mappin.and.ellipse")
                            Text("Home").bold()
                        }
                        .padding(.vertical)
                        
                        HStack(alignment: .center) {
                            Image(systemName: "flag")
                            Text("ETH Zentrum").bold()
                        }
                        .padding(.vertical)
                    }.padding(.horizontal)
                        .position(x: 97, y: 60)
                    
                    VStack (alignment: .leading){
                        
                        HStack(alignment: .center) {
                            Image(systemName: "calendar")
                            Text("12 Dec 2021")
                        }.padding(.top)
                        
                        HStack(alignment: .center) {
                            Image(systemName: "clock")
                            Text("09:41 - 10:05")
                        }.padding(.vertical)
                        
                        HStack(alignment: .center) {
                            Image(systemName: "dollarsign.square")
                            Text("CHF 8.10")
                        }
                        .padding(.bottom)
                    }.padding(.trailing, 20.0)
                    
                }.frame(width: 350, height: 120)
                    .padding()
                    .background(.ultraThinMaterial)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                .navigationTitle("Past rides")
                .padding(.vertical)
                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                HStack {
                VStack(alignment: .leading){
                    HStack(alignment: .center) {
                        Image(systemName: "mappin.and.ellipse")
                        Text("Zürich HB").bold()
                    }
                    .padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "flag")
                        Text("KKL Luzern").bold()
                    }
                    .padding(.vertical)
                }.padding(.horizontal)
                        .position(x: 90, y: 60)
                
                VStack (alignment: .leading){
                    
                    HStack(alignment: .center) {
                        Image(systemName: "calendar")
                        Text("07 Dec 2021")
                    }.padding(.top)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "clock")
                        Text("11:32 - 12:36")
                    }.padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "dollarsign.square")
                        Text("CHF 10.40")
                    }
                    .padding(.bottom)
                }.padding(.trailing, 24.0)
                
            }.frame(width: 350, height: 120)
                .padding()
                .background(.ultraThinMaterial)
                .backgroundStyle(cornerRadius: 14, opacity: 0.4)
            .navigationTitle("Past rides")
            .padding(.vertical)
            }
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            HStack {
                VStack(alignment: .leading){
                    HStack(alignment: .center) {
                        Image(systemName: "mappin.and.ellipse")
                        Text("Home").bold()
                    }
                    .padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "flag")
                        Text("Work").bold()
                    }
                    .padding(.vertical)
                }.padding(.horizontal)
                    .position(x: 68, y: 60)
                
                VStack (alignment: .leading){
                    
                    HStack(alignment: .center) {
                        Image(systemName: "calendar")
                        Text("29 Nov 2021")
                    }.padding(.top)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "clock")
                        Text("06:50 - 07:03")
                    }.padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "dollarsign.square")
                        Text("CHF 5.80")
                    }
                    .padding(.bottom)
                }.padding(.horizontal)
                
            }.frame(width: 350, height: 120)
                .padding()
                .background(.ultraThinMaterial)
                .backgroundStyle(cornerRadius: 14, opacity: 0.4)
            .navigationTitle("Past rides")
            .padding(.vertical)
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            HStack {
                VStack(alignment: .leading){
                    HStack(alignment: .center) {
                        Image(systemName: "mappin.and.ellipse")
                        Text("Home").bold()
                    }
                    .padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "flag")
                        Text("Work").bold()
                    }
                    .padding(.vertical)
                }.padding(.horizontal)
                    .position(x: 68, y: 60)
                
                VStack (alignment: .leading){
                    
                    HStack(alignment: .center) {
                        Image(systemName: "calendar")
                        Text("22 Nov 2021")
                    }.padding(.top)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "clock")
                        Text("06:53 - 07:10")
                    }.padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "dollarsign.square")
                        Text("CHF 5.90")
                    }
                    .padding(.bottom)
                }.padding(.horizontal)
                
            }.frame(width: 350, height: 120)
                .padding()
                .background(.ultraThinMaterial)
                .backgroundStyle(cornerRadius: 14, opacity: 0.4)
            .navigationTitle("Past rides")
            .padding(.vertical)
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            HStack {
                VStack(alignment: .leading){
                    HStack(alignment: .center) {
                        Image(systemName: "mappin.and.ellipse")
                        Text("Oerlikon").bold()
                    }
                    .padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "flag")
                        Text("Bern, Wankdorf").bold()
                    }
                    .padding(.vertical)
                }.padding(.horizontal)
                    .position(x: 108, y: 60)
                
                VStack (alignment: .leading){
                    
                    HStack(alignment: .center) {
                        Image(systemName: "calendar")
                        Text("05 Sep 2021")
                    }.padding(.top)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "clock")
                        Text("13:32 - 15:12")
                    }.padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "dollarsign.square")
                        Text("CHF 9.70")
                    }
                    .padding(.bottom)
                }.padding(.horizontal)
                
            }.frame(width: 350, height: 120)
                .padding()
                .background(.ultraThinMaterial)
                .backgroundStyle(cornerRadius: 14, opacity: 0.4)
            .navigationTitle("Past rides")
            .padding(.vertical)
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        }
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
    }
}

struct PastRidesView_Previews: PreviewProvider {
    static var previews: some View {
        PastRidesView()
    }
}
