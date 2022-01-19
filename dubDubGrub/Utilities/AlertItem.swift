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
}
