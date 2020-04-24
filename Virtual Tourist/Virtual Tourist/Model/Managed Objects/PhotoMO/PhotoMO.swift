//
//  Photo.swift
//  Virtual Tourist
//
//  Created by Abdoulaye Diallo on 4/24/20.
//  Copyright © 2020 Tiago Maia Lopes. All rights reserved.
//

import Foundation
import CoreData
import UIKit

/// The managed object representing a photo associated to an album.
class PhotoMO: NSManagedObject {

    // MARK: Properties

    /// A transient property holding the loaded image from the store or web.
    /// - Note: This property it not automatically set, therefore you are in charge of
    ///         setting this property if it becomes needed.
    var image: UIImage?

    // MARK: Life cycle

    override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
