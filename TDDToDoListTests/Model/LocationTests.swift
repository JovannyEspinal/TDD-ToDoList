//
//  LocationTests.swift
//  TDDToDoList
//
//  Created by Jovanny Espinal on 5/21/16.
//  Copyright © 2016 Jovanny Espinal. All rights reserved.
//

import XCTest
@testable import TDDToDoList
import CoreLocation

class LocationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_ShouldSetNameAndCoordinate() {
        let testCoordinate = CLLocationCoordinate2D(latitude: 1,
                                                    longitude: 2)
        let location = Location(name: "",
                                coordinate: testCoordinate)
        
        XCTAssertEqual(location.coordinate?.latitude, testCoordinate.latitude, "Initializer should set latitude.")
        XCTAssertEqual(location.coordinate?.longitude, testCoordinate.longitude, "Initializer should set longitude")
        
    }
    
    func testEqualLocations_SHouldBeEqual() {
        let firstLocation = Location(name: "Home")
        let secondLocation = Location(name: "Home")
        
        XCTAssertEqual(firstLocation, secondLocation)
    }
    
    func testWhenLatitudeDifferes_ShouldNotBeEqual() {
        let firstCoordinate = CLLocationCoordinate2D(latitude: 1.0,
                                                     longitude: 0.0)
        let firstLocation = Location(name: "Home", coordinate: firstCoordinate)
        
        let secondCoordinate = CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
        let secondLocation = Location(name: "Home", coordinate: secondCoordinate)
        
        XCTAssertNotEqual(firstLocation, secondLocation)
        
    }
    
    func testWhenLongitudeDifferes_ShouldNotBeEqual() {
        let firstCoordinate = CLLocationCoordinate2D(latitude: 0.0,
                                                     longitude: 1.0)
        let firstLocation = Location(name: "Home", coordinate: firstCoordinate)
        
        let secondCoordinate = CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
        let secondLocation = Location(name: "Home", coordinate: secondCoordinate)
        
        XCTAssertNotEqual(firstLocation, secondLocation)
    }
    
}
