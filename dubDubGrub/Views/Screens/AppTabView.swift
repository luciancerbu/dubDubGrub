//
//  AppTabView.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 11.01.2022.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            LocationListView()
                .tabItem {
                    Label("Location", systemImage: "building")
                }
            
            NavigationView {
                ProfileView()
            }
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
