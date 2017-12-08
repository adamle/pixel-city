//
//  MapVC.swift
//  pixel-city
//
//  Created by Le Dang Dai Duong on 12/7/17.
//  Copyright © 2017 Le Dang Dai Duong. All rights reserved.
//

import UIKit
import MapKit
// Manage user location
import CoreLocation

class MapVC: UIViewController {

    // Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    let authorizationStatus = CLLocationManager.authorizationStatus()
    let regionRadius: Double = 1000 //m2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        configureLocationServices()
    }

    // IBAction
    @IBAction func centerMapBtnPressed(_ sender: Any) {
        if authorizationStatus == .authorizedAlways || authorizationStatus == .authorizedWhenInUse {
            centerMapOnUserLocation()
        }
    }
}

// Conform mapView delegate
extension MapVC: MKMapViewDelegate {
    func centerMapOnUserLocation() {
        guard let coordinate = locationManager.location?.coordinate else { return}
        // MKCoordinateSpan tells the map how far it should be from locationManager coordinate
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(coordinate, regionRadius * 2, regionRadius * 2)
        mapView.setRegion(coordinateRegion, animated: true)
    }
}

// Conform coreLocationManager delegate
extension MapVC: CLLocationManagerDelegate {
    
    // Check if our app is authorized to see user location
    func configureLocationServices() {
        if authorizationStatus == .notDetermined {
            locationManager.requestAlwaysAuthorization()
        } else {
            return
        }
    }
    
    // When the Authorization was given (changed), call the func centerMapOnUserLocation
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        centerMapOnUserLocation()
    }
    
}


























