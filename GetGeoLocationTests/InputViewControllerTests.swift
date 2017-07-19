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
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_HasAddressTextField() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "InputViewController") as! InputViewController
        _ = sut.view
        XCTAssertNotNil(sut.addressTextField)
    }
}
