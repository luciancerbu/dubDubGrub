//
//  View+Ext.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 16.01.2022.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(profileNameText())
    }
}
