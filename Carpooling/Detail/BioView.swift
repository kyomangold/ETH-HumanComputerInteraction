//
//  BioView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI

struct BioView: View {
    
    @State var quote: String = "Think different."
    @State var love: String = "Spirituality, Computers"
    @State var job: String = "Entrepreneur"
    @State var song: String = "Imagine by John Lennon"
    
    @State private var showingAlert = false
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Image(systemName: "person.crop.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150, alignment: .leading)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .offset(x: -22.5, y: -20)
                
                VStack {
                    Text("You")
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
                }.offset(y: -20)
                
            }
            
            
            
            Group{
                VStack {
                    
                    
                    VStack{
                        HStack {
                            Image(systemName: "quote.bubble.fill")
                                .padding(.horizontal,20.0)
                            TextField("Your quote", text: $quote).frame(width: 250, height: 30, alignment: .center)
                                .textFieldStyle(.roundedBorder)
                        }.position(x: 174, y: 40)
                        
                        HStack {
                            Image(systemName: "heart.fill")
                                .padding(.horizontal, 20.0)
                            TextField("Things you love", text: $love).frame(width: 250, height: 30, alignment: .center)
                                .textFieldStyle(.roundedBorder)
                        }.position(x: 174, y: 40)
                        HStack {
                            Image(systemName: "briefcase.fill")
                                .padding(.horizontal, 19.0)
                            TextField("Your job", text: $job).frame(width: 250, height: 30, alignment: .center)
                                .textFieldStyle(.roundedBorder)
                        }.position(x: 174, y: 40)
                        
                        HStack {
                            Image(systemName: "music.note")
                                .padding(.horizontal, 21.0)
                            TextField("Your favorite song", text: $song).frame(width: 250, height: 30, alignment: .center)
                                .textFieldStyle(.roundedBorder)
                        }.position(x: 174, y: 40)
                        
                        HStack {
                            Image(systemName: "figure.stand.line.dotted.figure.stand")
                                .padding(.horizontal, 20)
                            Group {
                                Link(destination: URL(string: "https://www.facebook.com")!)
                                {
                                    Image("facebook")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                }.padding(.horizontal, 2)
                                Link(destination: URL(string: "https://www.instagram.com")!)
                                {
                                    Image("instagram")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                }
                                .padding(.horizontal, 2)
                                Link(destination: URL(string: "https://www.twitter.com")!)
                                {
                                    Image("twitter")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                }.padding(.horizontal, 2)
                                Link(destination: URL(string: "https://www.wechat.com")!)
                                {
                                    Image("wechat")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                }.padding(.horizontal, 2)
                                Link(destination: URL(string: "https://www.linkedin.com")!)
                                {
                                    Image("linkedin")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                }.padding(.horizontal, 2)
                                Link(destination: URL(string: "https://www.slack.com")!)
                                {
                                    Image("slack")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                }.padding(.horizontal, 2)
                            }
                        }.padding(.top).position(x: 170, y: 20)
                    }
                    .frame(width: 356, height: 350)
                    .background(.ultraThinMaterial)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                }
            }.padding()
            
            Button(action: {showingAlert = true}) {
                Text("Save").bold()}
        }.padding(.vertical, 50)
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Changes saved"),
                      message: Text("The changes to your personal RideMates bio have been saved successfully!"),
                      dismissButton: .default(Text("OK")))
                
                
                
            }
            .navigationBarTitle(Text("Personal Bio"))
            .frame(maxWidth: .infinity)
            .padding()
    }
}

struct BioView_Previews: PreviewProvider {
    static var previews: some View {
        BioView()
    }
}
