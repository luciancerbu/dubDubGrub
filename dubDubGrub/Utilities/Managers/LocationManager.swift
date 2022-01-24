//
//  LocationManager.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 24.01.2022.
//

import Foundation

final class LocationManager: ObservableObject {
    @Published var locations: [DDGLocation] = []
}
