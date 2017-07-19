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
    
    func searchCoordinate() ->CLLocationCoordinate2D {
        guard let addressString = addressTextField.text, addressString.characters.count > 0 else {
            return CLLocationCoordinate2DMake(0,
                                             0)
        }
        return CLLocationCoordinate2DMake(37.3316851,
                                          -122.0300674)
    }
}
