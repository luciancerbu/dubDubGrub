//
//  dubDubGrubApp.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 11.01.2022.
//

import SwiftUI

@main
struct dubDubGrubApp: App {
    let locationManager = LocationManager()
    
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(locationManager)
        }
    }
}
