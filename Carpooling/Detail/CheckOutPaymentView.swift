//
//  CheckOutPaymentView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 07.12.21.
//

import SwiftUI
import iPaymentButton


struct CheckOutPaymentView: View {
    
    @State var isPaid: Bool = false
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        VStack{
            VStack{
                Text("Check-out?")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding()
                
                Text("Your trip costs 7.50 CHF")
                    .font(.system(size: 22.5))
                    .padding()
            }
            .frame(width: 356)
            .background(.ultraThinMaterial)
            .backgroundStyle(cornerRadius: 14, opacity: 0.4)
            .padding(.top, 120)
            .padding(.bottom, 350)
            
            switch colorScheme {
            case .light:
                iPaymentButton(type: .buy, style: .black, action: {
                    
                    iPaymentButton.applePayDemo()
                    isPaid = true
                    
                })
                    .frame(width: 370, height: 50, alignment: .center)
                    .cornerRadius(10)
            case .dark:
                iPaymentButton(type: .buy, style: .whiteOutline, action: {
                    
                    iPaymentButton.applePayDemo()
                    isPaid = true
                    
                })
                    .frame(width: 370, height: 50, alignment: .center)
                    .cornerRadius(10)
            @unknown default:
                fatalError()
            }
            
            if isPaid{
                Group{
                    NavigationLink(destination: RateDriverView()) {
                        Text("Continue")
                    }.navigationBarBackButtonHidden(true)
                    .font(.system(size: 17, weight: .bold))
                    .frame(width: 370, height: 50)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
                }
            }
            Spacer()
        }
    }
}

struct CheckOutPaymentView_Previews: PreviewProvider {
    static var previews: some View {
        CheckOutPaymentView()
    }
}
