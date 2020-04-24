//
//  Pin.swift
//  Virtual Tourist
//
//  Created by Abdoulaye Diallo on 4/24/20.
//  Copyright © 2020 Abdoulaye Diallo. All rights reserved.
//

import Foundation
import CoreData

/// The managed object representing a pin.
class PinMO: NSManagedObject {

    // MARK: Life cycle

    override func awakeFromInsert() {
        super.awakeFromInsert()

        creationDate = Date()
        album = AlbumMO(context: managedObjectContext!)
    }
}
