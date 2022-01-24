//
//  CloudKitManager.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 17.01.2022.
//

import CloudKit

struct CloudKitManager {
    
    static func getLocation(completed: @escaping (Result<[DDGLocation], Error>) -> Void) {
        let sordDescriptor = NSSortDescriptor(key: DDGLocation.kName, ascending: true)
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        
        query.sortDescriptors = [sordDescriptor]
        
        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            guard error == nil else {
                completed(.failure(error!))
                return
            }
            
            guard let records = records else { return }
            let locations = records.map { $0.convertToDDGLocation() }
            
            completed(.success(locations))
        }
    }
}
