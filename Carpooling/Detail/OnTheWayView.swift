//
//  OnTheWayView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 06.12.21.
//

import SwiftUI
import MapKit

struct OnTheWayView: View {
    
    var body: some View{
        
        ScrollView {
            VStack(spacing: 8) {
                HStack {
                    Image("Driver")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150, alignment: .leading)
                        .cornerRadius(10)
                        .padding([.top, .leading, .bottom], 30)
                    
                    VStack {
                        Group{Text("John is on ")+Text("the way!")}
                        .frame(width: 150, height: 150, alignment: .center)
                        .font(.title.weight(.semibold))
                        .padding()
                        
                        HStack {
                            Image(systemName: "star.fill")
                                .imageScale(.medium)
                                .foregroundColor(.yellow)
                            Text("4.9")
                                .foregroundColor(.secondary)
                                .fontWeight(.semibold)
                        }.font(.system(size: 25)).offset(y: -50)
                    }
                    
                }
                
                HStack{
                    VStack{
                        Text("Pick up:").bold().padding(.bottom, 1.0)
                        Text("in 13 min")
                        Text("at 10:09")
                    }.padding()
                    
                    VStack{
                        Image(systemName: "car")
                            .padding(.bottom, 5.0)
                        Text("Tesla Model S")
                        Text("ZH 1234")
                    }.padding()
                    
                    VStack{
                        Text("Arrival:").bold().padding(.bottom, 1.0)
                        Text("in 34 min")
                        Text("at 10:30")
                    }.padding()
                }
                .frame(width: 356)
                .background(.ultraThinMaterial)
                .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                
                
                
                MapView()
                    .frame(width: 356, height: 203, alignment: .center)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                    .padding()
                    
                
                HStack{
                    // "imessage: 0791234567"
                    Link(destination: URL(string: "https://www.apple.com")!, label:{
                        Image(systemName: "message")
                        Text("Text driver")
                    })
                        .frame(width: 150, height: 30)
                        .foregroundColor(.primary)
                        .background(.ultraThinMaterial)
                        .backgroundStyle(cornerRadius: 7, opacity: 0.4)
                    // "tel: 0791234567"
                    Link(destination: URL(string: "https://www.apple.com")!, label:{
                        Image(systemName: "phone")
                        Text("Call driver")
                    }).frame(width: 150, height: 30)
                        .foregroundColor(.primary)
                        .background(.ultraThinMaterial)
                        .backgroundStyle(cornerRadius: 7, opacity: 0.4)
                }.padding(.bottom)
                
                VStack{
                    Text("Check out the profiles of your ride mates!").bold().padding(.top)
                    NavigationLink(destination: CheckPAXView()) {
                        HStack{
                            VStack{
                                Image("PAX_1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70, height: 70)
                                    .backgroundStyle(cornerRadius: 5, opacity: 0.4)
                                Text("Nina").foregroundColor(.primary)
                            }
                            VStack{
                                Image("PAX_2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70, height: 70)
                                    .backgroundStyle(cornerRadius: 5, opacity: 0.4)
                                Text("Ben").foregroundColor(.primary)
                            }
                            .padding(.horizontal, 34.0)
                            VStack{
                                Image("PAX_3")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70, height: 70)
                                    .backgroundStyle(cornerRadius: 5, opacity: 0.4)
                                Text("Sarah").foregroundColor(.primary)
                            }
                            
                        }
                        .padding(.bottom)
                    }
                }.frame(width: 356)
                    .background(.ultraThinMaterial)
                    .backgroundStyle(cornerRadius: 14, opacity: 0.4)
                    .padding(.bottom)
                
                Group{
                    NavigationLink(destination: DuringRideView()) {
                        Text("Check-in ride")
                    }.navigationBarBackButtonHidden(true)
                    .font(.system(size: 17, weight: .bold))
                    .frame(width: 370, height: 50)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
                }
            }
        }
    }
}


// Code for map and direction adapted from: https://github.com/apatronl/Medium/tree/master/Directions

struct MapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
    
    func makeCoordinator() -> MapViewCoordinator {
        return MapViewCoordinator()
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 47.3765, longitude: 8.5481),
            span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.04))
        mapView.setRegion(region, animated: false)
        
        // ETH Zentrum
        let p1 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 47.3765, longitude: 8.5481))
        
        // ETH Höngg
        let p2 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 47.4086, longitude: 8.5062))
        
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: p1)
        request.destination = MKMapItem(placemark: p2)
        request.transportType = .automobile
        
        let directions = MKDirections(request: request)
        directions.calculate { response, error in
            guard let route = response?.routes.first else { return }
            mapView.addAnnotations([p1, p2])
          //  mapView.view(for: p1)?.isHidden = true
            mapView.addOverlay(route.polyline)
            mapView.setVisibleMapRect(
                route.polyline.boundingMapRect,
                edgePadding: UIEdgeInsets(top: 40, left: 30, bottom: 40, right: 30),
                animated: true)
        }
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {}
    
    class MapViewCoordinator: NSObject, MKMapViewDelegate {
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            let renderer = MKPolylineRenderer(overlay: overlay)
            renderer.strokeColor = .systemBlue
            renderer.lineWidth = 5
            return renderer
        }
    }
}

struct OnTheWayView_Previews: PreviewProvider {
    static var previews: some View {
        OnTheWayView()
    }
}
