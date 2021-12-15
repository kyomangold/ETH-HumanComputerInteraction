//
//  ForestView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI

struct ForestView: View {
    
    var body: some View {
        
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        VStack(spacing: 20) {
            
            VStack{
                Group {
                    Text("314 kg of CO2").bold()
                        .font(.system(size: 25))
                    
                    Text("That is how much you minimized your environmental impact this year by using carpooling instead of driving alone. ") + Text("That's equivalent to the amount of trees below!")
                    
                }.padding()
            }.frame(width: screenWidth-40, height: screenHeight-720, alignment: .bottom)
                .background(.ultraThinMaterial)
                .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                .padding()
                .offset(y: 50)
            
            ZStack {
                ForEach(0..<80) { _ in
                    Image("Tree")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFit()
                        .position(
                            x: CGFloat.random(in: 0..<screenWidth-90),
                            y: CGFloat.random(in: 0..<screenHeight-550)
                        )
                        .padding()
                }
            }.frame(width: screenWidth-40, height: screenHeight-500, alignment: .bottom)
                .background(.ultraThinMaterial)
                .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                .padding()
                .offset(y: 20)
        }.overlay(Text("Your forest")
                    .fontWeight(.bold)
                    .position(x: 100, y: 30)
                    .font(.system(size: 35))
        )
    }
}

struct ForestView_Previews: PreviewProvider {
    static var previews: some View {
        ForestView()
    }
}
