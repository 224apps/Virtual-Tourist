//
//  Map+Utils.swift
//  Virtual Tourist
//
//  Created by Abdoulaye Diallo on 4/24/20.
//  Copyright © 2020 Abdoulaye Diallo. All rights reserved.
//

import Foundation
import MapKit

extension MKMapView {

    /// Removes all currently handled annotations.
    func removeAllAnnotations() {
        removeAnnotations(annotations)
    }
}

class PinAnnotation: MKPointAnnotation {

    // MARK: Properties

    /// The associated pin managed object.
    var pin: PinMO

    // MARK: Initializers

    init(pin: PinMO) {
        self.pin = pin

        super.init()

        // TODO: Is it a good idea to store the coordinates directly? As a Transformable property?
        self.coordinate = CLLocationCoordinate2D(latitude: pin.latitude, longitude: pin.longitude)
    }
}
