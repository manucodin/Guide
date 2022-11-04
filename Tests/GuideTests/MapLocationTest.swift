//
//  MapLocationTest.swift
//
//
//  Created by Manuel Rodriguez Sebastian on 1/11/22.
//

import XCTest
import CoreLocation

@testable import Guide

final class MapLocationTest: XCTestCase {
    func testCreateLocation() {
        let latitude = 41.380775
        let longitude = 2.173661
        
        let sut = MapLocation(latitude: 41.380775, longitude: 2.173661)
        
        XCTAssertTrue(sut.latitude == latitude)
        XCTAssertTrue(sut.longitude == longitude)
    }
    
    func testCreateLocationWithCoordinates() {
        let latitude = 41.380775
        let longitude = 2.173661
        
        let sut = MapLocation(coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude))
        
        XCTAssertTrue(sut.latitude == latitude)
        XCTAssertTrue(sut.longitude == longitude)
    }
}
