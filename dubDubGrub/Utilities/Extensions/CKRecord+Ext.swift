//
//  CKRecord+Ext.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 18.01.2022.
//

import CloudKit

extension CKRecord {
    func convertToDDGLocation() -> DDGLocation { DDGLocation(record: self) }
    func convertToDDGProfile() -> DDGProfile { DDGProfile(record: self)}
}
