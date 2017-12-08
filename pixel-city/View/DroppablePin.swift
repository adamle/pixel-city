//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Le Dang Dai Duong on 12/8/17.
//  Copyright © 2017 Le Dang Dai Duong. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
