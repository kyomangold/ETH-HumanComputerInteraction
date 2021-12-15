//
//  SearchDetailsView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 05.12.21.
//

import SwiftUI

struct SearchDetailsView: View {
    
    enum LuggageType: String, CaseIterable, Identifiable {
        
        case none
        case small
        case medium
        case large
        
        var id: String { self.rawValue }
    }
    
    @State var luggageType: LuggageType = .none
    
    @State var isRoundtrip: Bool = false
    
    @State private var showingAlert = false
    
    @State var timeFlex: Int = 0
    @State var locationFlex: Int = 0
    @State var luggagePcs: Int = 0
    @State var numPAX: Int = 1
    
    @State var isHealthSafe: Bool = false
    @State private var showAlertHS = false
    
    @State var current_date = Date()
    
    var body: some View {
        Form(content: {
            
            Section(header: Text("Roundtrip")) {
                Toggle(isOn: $isRoundtrip, label: {
                    HStack {
                        Text("Book a roundtrip:")
                    }
                })
            }
            
            Section(header: Text("Travel date and time")) {
                DatePicker(selection: $current_date, label: { Text("Departure:") })
            }
            
            Section(header: Text("Flexibility")) {
                Stepper("Time:                   \(timeFlex) min", value: $timeFlex, in: 0...60, step: 5)
                Stepper("Location:             \(locationFlex) m", value: $locationFlex, in: 0...500, step: 20)
            }
            
            Section(header: Text("Luggage info")) {
                HStack {
                    Picker("Gender", selection: $luggageType) {
                        ForEach(LuggageType.allCases) { luggageType in
                            Text(luggageType.rawValue.capitalized).tag(luggageType)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Button(action: {showingAlert = true}) {
                        Image(systemName: "questionmark.circle")}
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Info about luggage sizes"),
                          message: Text("Small: handbag, backpack, laptop bag \n Medium: carry-on luggage, duffel bag \n Large: stroller, skis/snowboard, bicycle, scooter "),
                          dismissButton: .default(Text("Dismiss")))
                }
                
                Stepper("Number of pieces:          \(luggagePcs)", value: $luggagePcs, in: 0...10, step: 1)
            }
            
            Section(header: Text("Number of Passengers")) {
                Stepper("Number of passengers:       \(numPAX)", value: $numPAX, in: 1...6, step: 1)
            }
            
            Section(header: Text("Health & Safety")) {
                
                HStack {
                    Toggle(isOn: $isHealthSafe, label: {
                        HStack {
                            Text("Only show conforming drivers:")
                        }
                    }).padding(.trailing)
                    Button(action: {showingAlert = true}) {
                        Image(systemName: "questionmark.circle")}
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Info about health & safety"),
                          message: Text("Only suggest rides with users conforming to the additional non-mandatory COVID-19 health & safety measures of Ridemates Carpooling:\n - always wearing a face mask \n - disinfecting hands before the ride \n - having a valid COVID-19 certificate"),
                          dismissButton: .default(Text("Dismiss")))
                }
            }
        }
        )
        Group{
            NavigationLink(destination: RideSelectionView()) {
                Text("Show matching rides")
            }
            .font(.system(size: 17, weight: .bold))
            .frame(width: 370, height: 50)
            .foregroundColor(.white)
            .background(.blue)
            .backgroundStyle(cornerRadius: 14, opacity: 0.4)
        }
    }
}


struct SearchDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailsView()
    }
}
