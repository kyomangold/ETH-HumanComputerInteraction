//
//  FindView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import MapKit
import SwiftUI

struct FindView: View {
    
    @StateObject private var viewModel = MapViewModel()
    
    
    var body: some View {
        
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .opacity(0.7)
            .onAppear{
                viewModel.checkIfLocationServicesIsEnabled()
            }
            .overlay(NavigationBar())
        
    }
}

struct FindView_Previews: PreviewProvider {
    static var previews: some View {
        FindView()
            .preferredColorScheme(.light)
    }
}

final class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 47.3764, longitude: 8.5476), span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.04))
    
    var locationManager: CLLocationManager?
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
        }
        else {
            print("Show alert letting them know this is off and to activate it.")
        }
    }
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
            
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Location is restricted")
        case .denied:
            print("You have denied this app location permission.")
        case .authorizedAlways, .authorizedWhenInUse:
            break
            //                region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
    
    
}
