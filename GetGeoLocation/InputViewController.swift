//
//  InputViewController.swift
//  GetGeoLocation
//
//  Created by roger on 2017/7/19.
//  Copyright © 2017年 roger. All rights reserved.
//

import UIKit
import CoreLocation

class InputViewController: UIViewController {
    
    @IBOutlet var addressTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var geoLabel: UILabel!
    lazy var geocoder = CLGeocoder()
    var coordinate: CLLocationCoordinate2D?
    
    @IBAction func search() {
        guard let address = addressTextField.text, address.characters.count > 0 else {
            return
        }
        geocoder.geocodeAddressString(address) {
            [unowned self] (placeMarks, error) -> Void in
            let placeMark = placeMarks?.first
            self.coordinate = placeMark?.location?.coordinate
            self.geoLabel.text = "Latitude:\(self.coordinate!.latitude) and longitude:\(self.coordinate!.longitude)"
        }
    }
}
