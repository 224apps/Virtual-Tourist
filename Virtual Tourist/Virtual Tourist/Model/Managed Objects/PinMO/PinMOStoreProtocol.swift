//
//  PinMOStoreProtocol.swift
//  Virtual Tourist
//
//  Created by Abdoulaye Diallo on 4/24/20.
//  Copyright © 2020 Abdoulaye Diallo. All rights reserved.
//

import Foundation
import CoreLocation
import CoreData

/// A store in charge of creating new PinMO instances and persist them using core data.
protocol PinMOStoreProtocol {

    // MARK: Imperatives

    /// Creates and persists a pin object.
    /// - Parameters:
    ///     - context: the managed object context used to persist the pin.
    ///     - locationText: the name of the location associated with the pin.
    ///     - coordinate: the coordinates of the pin.
    /// - Returns: the created pin object.
    func createPin(
        usingContext context: NSManagedObjectContext,
        withLocationName locationName: String?,
        andCoordinate coordinate: CLLocationCoordinate2D
    ) -> PinMO
}
