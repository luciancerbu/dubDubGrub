//
//  LocationMapViewModel.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 20.01.2022.
//

import MapKit

final class LocationMapViewModel: ObservableObject {
    @Published var alertItem: AlertItem?
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    func getLocations(for locationManager: LocationManager) {
        CloudKitManager.getLocation { [self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let locations):
                    locationManager.locations = locations
                case .failure(_):
                    alertItem = AlertContext.unableToGetLocation
                }
            }
        }
    }
}
