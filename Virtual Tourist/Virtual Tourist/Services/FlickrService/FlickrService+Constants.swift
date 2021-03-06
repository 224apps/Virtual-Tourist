//
//  FlickrService+Constants.swift
//  Virtual Tourist
//
//  Created by Abdoulaye Diallo on 4/24/20.
//  Copyright © 2020 Abdoulaye Diallo. All rights reserved.
//

import Foundation

/// The constants used by the flicker service.
extension FlickrService {

    // MARK: Types

    enum API {
        static let Scheme = "https"
        static let Host = "api.flickr.com"
        static let Path = "/services/rest"
    }

    enum Methods {
        static let PhotosSearch = "flickr.photos.search"
    }

    enum ParameterKeys {
        static let APIKey = "api_key"
        static let Method = "method"
        static let Format = "format"
        static let NoJsonCallback = "nojsoncallback"
        static let Text = "text"
        static let BoundingBox = "bbox"
        static let Extra = "extras"
    }

    enum ParameterDefaultValues {
        static let Format = "json"
        static let NoJsonCallback = "1"
        static let ExtraMediumURL = "url_m"
    }
}
