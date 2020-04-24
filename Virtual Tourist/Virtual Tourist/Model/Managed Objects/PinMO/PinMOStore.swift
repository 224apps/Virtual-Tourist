//
//  PinMOStore.swift
//  Virtual Tourist
//
//  Created by Abdoulaye Diallo on 4/24/20.
//  Copyright © 2020 Abdoulaye Diallo. All rights reserved.
//

import Foundation
import CoreData
import CoreLocation

struct PinMOStore: PinMOStoreProtocol {

    // MARK: Imperatives

    func createPin(
        usingContext context: NSManagedObjectContext,
        withLocationName locationName: String?,
        andCoordinate coordinate: CLLocationCoordinate2D) -> PinMO {

        let pin = PinMO(context: context)
        pin.placeName = locationName
        pin.latitude = coordinate.latitude
        pin.longitude = coordinate.longitude

        return pin
    }
}
