//
//  LocationListView.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 11.01.2022.
//

import SwiftUI

struct LocationListView: View {
    
    @EnvironmentObject private var locationManger: LocationManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locationManger.locations) { location in
                    NavigationLink(destination: LocationDetailView(location: location)) {
                        LocationCell(location: location)
                    }
                }
            }
            .navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
