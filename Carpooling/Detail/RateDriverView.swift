//
//  RateDriverView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 07.12.21.
//

import SwiftUI

struct RateDriverView: View {
    
    @State private var rating: Int?
    
    var body: some View {
        
        VStack {
            VStack{
                Image("Driver")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .cornerRadius(10)
                    .padding(.all, 30)
                
                Text("Please rate your driver John:")
                    .bold()
                    .padding(.vertical)
                
                RatingView(rating: $rating, max: 5)
            }
            .frame(width: 350, height: 350)
            .padding()
            .background(.ultraThinMaterial)
            .backgroundStyle(cornerRadius: 14, opacity: 0.4)
            .padding(.top, 105)
            
            Spacer()
            
            Group{
                NavigationLink(destination: RatePAXView()) {
                    Text("Continue")
                }.navigationBarBackButtonHidden(true)
                .font(.system(size: 17, weight: .bold))
                .frame(width: 370, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
            }.padding(.top, 180)
            Spacer()
        }
        
        
        
    }
}

struct RateDriverView_Previews: PreviewProvider {
    static var previews: some View {
        RateDriverView()
    }
}
