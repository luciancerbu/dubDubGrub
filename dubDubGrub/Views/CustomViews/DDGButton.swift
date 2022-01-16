//
//  DDGButton.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 16.01.2022.
//

import SwiftUI

struct DDGButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .bold()
            .frame(width: 280, height: 44)
            .background(Color.brandPrimary)
            .foregroundColor(Color(uiColor: .white))
            .cornerRadius(8)
    }
}

struct DDGButton_Previews: PreviewProvider {
    static var previews: some View {
        DDGButton(title: "Test Button")
    }
}
