//
//  BillingView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI

struct BillingView: View {
    
    @State private var ccnumber = ""
    @State private var expdate = ""
    @State private var cvv = ""
    
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var streetname = ""
    @State private var zip = ""
    @State private var city = ""
    
    @State private var showingAlert = false
    
    var body: some View {
            Form(content: {
                    Section (header: Text("Credit card details")){
                        TextField("Credit card number", text: $ccnumber)
                        TextField("Expiry date", text: $expdate)
                        TextField("CVV", text: $cvv)
                    }
                    
                    Section (header: Text("Billing Adress")){
                        TextField("First name", text: $firstname)
                        TextField("Last name", text: $lastname)
                        TextField("Street name and number", text: $streetname)
                        TextField("ZIP code", text: $zip)
                        TextField("City", text: $city)
                    }
                    
                    Button(action: {
                        showingAlert = true
                    }, label: {
                        Text("Save billing information")
                    })
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Billing information saved"),
                              message: Text("Your updated credit card details and billing address have been succesfully saved."),
                              dismissButton: .default(Text("Dismiss")))
                    }
            }).navigationBarTitle("Billing information")
    }
}

struct BillingView_Previews: PreviewProvider {
    static var previews: some View {
        BillingView()
    }
}
