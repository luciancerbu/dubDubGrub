//
//  Constants.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 17.01.2022.
//

import UIKit

enum RecordType {
    static let location = "DDGLocation"
    static let profile = "DDGProfile" 
}

enum PlaceHolderImage {
    static let avatar = UIImage(named: "default-avatar")!
    static let square = UIImage(named: "default-square-asset")!
    static let banner = UIImage(named: "default-banner-asset")!
}

enum ImageDimensions {
    case square, banner
    
    static func getPlaceholder(for dimmension: ImageDimensions) -> UIImage {
        switch dimmension {
        case .square:
            return PlaceHolderImage.square
        case .banner:
            return PlaceHolderImage.banner
        }
    }
}
