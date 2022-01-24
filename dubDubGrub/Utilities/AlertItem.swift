//
//  AlertItem.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 19.01.2022.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id: UUID?
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    //MARK: - MapView Errors
    static let unableToGetLocation = AlertItem(id: nil, title: Text("Location Error"),
                                           message: Text("Unable to retrieve location at this time.\n Please try again."),
                                           dismissButton: .default(Text("Ok")))
    
    static let locationRestricted = AlertItem(id: nil, title: Text("Location Restricted"),
                                           message: Text("You location is restricted. This may be due to parental controls."),
                                           dismissButton: .default(Text("Ok")))
    
    static let locationDenied = AlertItem(id: nil, title: Text("Location Denied"),
                                           message: Text("Dub Dub Grub does not have permission to access your location. To change that go to your phone settings > Dub Dub Grub > Location"),
                                           dismissButton: .default(Text("Ok")))
    
    static let locationDisabled = AlertItem(id: nil, title: Text("Location Service Disabled"),
                                           message: Text("Your phone's location services are disabled. To change go to your phone settings > Privacy > Location Services"),
                                           dismissButton: .default(Text("Ok")))
}
