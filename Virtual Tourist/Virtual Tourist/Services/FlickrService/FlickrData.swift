//
//  FlickrData.swift
//  Virtual Tourist
//
//  Created by Abdoulaye Diallo on 4/24/20.
//  Copyright © 2020 Abdoulaye Diallo. All rights reserved.
//

import Foundation

/// The response data returned from the flickr API.
struct FlickrSearchResponseData: Codable {
    let data: FlickrSarchData
    let status: String

    enum CodingKeys: String, CodingKey {
        case data = "photos"
        case status = "stat"
    }
}

/// The search response data returned from the flickr API.
struct FlickrSarchData: Codable {
    let page: Int
    let pages: Int
    let perPage: Int
    let photos: [FlickrImage]

    enum CodingKeys: String, CodingKey {
        case page
        case pages

        case perPage = "perpage"
        case photos = "photo"
    }
}

/// The image data returned from the flickr api.
struct FlickrImage: Codable {
    let id: String
    let title: String
    let mediumUrl: String

    enum CodingKeys: String, CodingKey {
        case id
        case title

        case mediumUrl = "url_m"
    }
}
