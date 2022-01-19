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
    @Published var locations: [DDGLocation] = []
    
    func getLocations() {
        CloudKitManager.getLocation { [self] result in
            switch result {
            case .success(let locations):
                self.locations = locations
            case .failure(_):
                alertItem = AlertContext.unableToGetLocation
            }
        }
    }
}
