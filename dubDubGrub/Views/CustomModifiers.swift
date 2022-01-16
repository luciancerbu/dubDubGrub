//
//  CustomModifiers.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 16.01.2022.
//

import SwiftUI

struct ProfileNameText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32, weight: .bold))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
    }
}
