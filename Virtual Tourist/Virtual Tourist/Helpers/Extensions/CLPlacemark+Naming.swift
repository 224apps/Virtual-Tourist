//
//  CLPlacemark+Naming.swift
//  Virtual Tourist
//
//  Created by Abdoulaye Diallo on 4/24/20.
//  Copyright © 2020 Abdoulaye Diallo. All rights reserved.
//

import Foundation
import CoreLocation

extension CLPlacemark {

    // MARK: Properties

    /// Generates the name of the placemark based on its own properties.
    var placeName: String? {
        var placeName = ""

        if let administrativeArea = administrativeArea, !administrativeArea.isEmpty {
            placeName = administrativeArea
        }

        if let locality = locality, !locality.isEmpty {
            placeName = (placeName.isEmpty ? "" : ", ") + locality
        }

        if let name = name, !name.isEmpty {
            placeName = (placeName.isEmpty ? "" : ", ") + name
        }

        return placeName.isEmpty ? nil : placeName
    }
}
