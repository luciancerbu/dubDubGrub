//
//  CKAsset+Ext.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 24.01.2022.
//

import CloudKit
import UIKit

extension CKAsset {
    func convertToUIImage(in dimmension: ImageDimensions) -> UIImage {
        let placeholder = ImageDimensions.getPlaceholder(for: dimmension)
        
        guard let fileUrl = self.fileURL else {
            return placeholder
        }
        
        do {
            let data = try Data(contentsOf: fileUrl)
            return UIImage(data: data) ?? placeholder
        } catch {
            return placeholder
        }
    }
}
