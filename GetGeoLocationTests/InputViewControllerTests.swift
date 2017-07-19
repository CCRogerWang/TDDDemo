//
//  InputViewControllerTests.swift
//  GetGeoLocation
//
//  Created by roger on 2017/7/19.
//  Copyright © 2017年 roger. All rights reserved.
//

import XCTest
import CoreLocation
@testable import GetGeoLocation

class InputViewControllerTests: XCTestCase {
    
    var sut: InputViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "InputViewController") as! InputViewController
        _ = sut.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_HasAddressTextField() {
        XCTAssertNotNil(sut.addressTextField)
    }
    
    func test_HasSearchButton() {
        XCTAssertNotNil(sut.searchButton)
    }
    
    func test_HasGeoLabel() {
        XCTAssertNotNil(sut.geoLabel)
    }
}
