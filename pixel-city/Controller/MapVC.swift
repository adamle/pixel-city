//
//  MapVC.swift
//  pixel-city
//
//  Created by Le Dang Dai Duong on 12/7/17.
//  Copyright © 2017 Le Dang Dai Duong. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    // Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }

    // IBAction
    @IBAction func centerMapBtnPressed(_ sender: Any) {
    }
}

extension MapVC: MKMapViewDelegate {
    
}
