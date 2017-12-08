//
//  Constants.swift
//  pixel-city
//
//  Created by Le Dang Dai Duong on 12/8/17.
//  Copyright © 2017 Le Dang Dai Duong. All rights reserved.
//

import Foundation

let API_KEY = "6c18f04227a61b2da1aa725b154ce8fa"

func flickrURL(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(API_KEY)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
}
