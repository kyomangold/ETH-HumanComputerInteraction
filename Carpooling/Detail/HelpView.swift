//
//  HelpView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        
        
        Link(destination: URL(string: "imessage:support@ridemates_group03.com")!)
        {
            VStack{
            Image(systemName: "person.fill.questionmark")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            Text("Contact Support")
                    .bold()
            }
        }.padding()
            .navigationBarTitle(Text("Help"))
        
        
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
