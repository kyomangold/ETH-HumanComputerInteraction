//
//  SettingsView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI

struct SettingsView: View {
    
    // code adapted from source: https://blog.waldo.io/swiftui-form-101/
    
    enum Gender: String, CaseIterable, Identifiable {
        case male
        case female
        case other
        
        var id: String { self.rawValue }
    }
    
    enum Language: String, CaseIterable, Identifiable {
        case english
        case german
        case french
        case italian
        case other
        
        var id: String { self.rawValue }
    }
    
    enum Ridemode: String, CaseIterable, Identifiable{
        case passenger
        case driver
        
        var id: String { self.rawValue }
    }
    
    @State var name: String = ""
    @State var password: String = ""
    
    @State var email: String = ""
    @State var phonenumber: String = ""
    
    @State var gender: Gender = .male
    @State var language: Language = .english
    @State var ridemode: Ridemode = .passenger
    @State private var birthdate = Date()
    
    @State var isPublic: Bool = true
    
    @State private var showingAlert = false
    
    var body: some View {
        Form(content: {
            Section(header: Text("Credentials")) {
                // Text field
                TextField("Username", text: $name)
                // Secure field
                SecureField("Password", text: $password)
            }
            
            Section(header: Text("Contact")) {
                // Text field
                TextField("Email", text: $email)
                // Secure field
                TextField("Phone number", text: $phonenumber)
            }
            
            Section(header: Text("User Info")) {
                // Segment Picker
                Picker("Gender", selection: $gender) {
                    ForEach(Gender.allCases) { gender in
                        Text(gender.rawValue.capitalized).tag(gender)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                // Date picker
                DatePicker("Date of birth",
                           selection: $birthdate,
                           displayedComponents: [.date])
                // Scroll picker
                Picker("Language", selection: $language) {
                    ForEach(Language.allCases) { language in
                        Text(language.rawValue.capitalized).tag(language)
                    }
                }
            }
            
            Section(header: Text("Preferred ride mode")) {
                Picker("Ride mode", selection: $ridemode) {
                    ForEach(Ridemode.allCases) { ridemode in
                        Text(ridemode.rawValue.capitalized).tag(ridemode)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            
            Section {
                // Toggle
                Toggle(isOn: $isPublic, label: {
                    HStack {
                        Text("Agree to our")
                        // Link
                        Link("terms of Service", destination: URL(string: "https://www.example.com/TOS.html")!)
                    }
                })
                // Button
                Button(action: {
                    showingAlert = true
                }) {
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }
                }
                .foregroundColor(.white)
                .padding(10)
                .background(Color.accentColor)
                .cornerRadius(8)
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Settings saved"),
                          message: Text("Enjoy your ride, mate!"),
                          dismissButton: .default(Text("OK")))
                }
            }
        }).padding(.bottom, 50)
            .navigationBarTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
