//
//  RatePAXView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 07.12.21.
//

import SwiftUI
import SheetKit

struct RatePAXView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var rating1: Int?
    @State private var rating2: Int?
    @State private var rating3: Int?
    
    var body: some View {
        
        ScrollView {
            
            
            VStack {
                Section {
                    VStack{
                        Image("PAX_1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .cornerRadius(10)
                            .padding(.all, 30)
                        
                        Text("Please rate Nina:")
                            .bold()
                            .padding(.vertical)
                        
                        RatingView(rating: $rating1, max: 5)
                    }
                    .frame(width: 350, height: 350)
                    .padding()
                    .background(.ultraThinMaterial)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                }.padding(.vertical)
                Section {
                    VStack{
                        Image("PAX_2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .cornerRadius(10)
                            .padding(.all, 30)
                        
                        Text("Please rate Ben:")
                            .bold()
                            .padding(.vertical)
                        
                        RatingView(rating: $rating2, max: 5)
                    }
                    .frame(width: 350, height: 350)
                    .padding()
                    .background(.ultraThinMaterial)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                }.padding(.vertical, 30)
                Section {
                    VStack{
                        Image("PAX_3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .cornerRadius(10)
                            .padding(.all, 30)
                        
                        Text("Please rate Sarah:")
                            .bold()
                            .padding(.vertical)
                        
                        RatingView(rating: $rating3, max: 5)
                    }
                    .frame(width: 350, height: 350)
                    .padding()
                    .background(.ultraThinMaterial)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                }.padding(.vertical, 30)
                Group{
                    Button {
                        SheetKit().dismissAllSheets(animated:false)
                    } label: {Text("Finish")}
                    .font(.system(size: 17, weight: .bold))
                    .frame(width: 370, height: 50)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
                }.padding(.vertical, 30)
                Spacer()
            }
        }
    }
}

struct RatePAXView_Previews: PreviewProvider {
    static var previews: some View {
        RatePAXView()
    }
}
