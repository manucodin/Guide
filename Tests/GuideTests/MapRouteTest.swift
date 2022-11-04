//
//  MapRouteTest.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 1/11/22.
//

import XCTest

@testable import Guide

final class MapRouteTest: XCTestCase {
    func testCreateMapRoute() {
        let destiny = MapLocation(latitude: 41.380775, longitude: 2.173661)
        let sut = MapRoute(destiny: destiny)
        
        XCTAssertTrue(sut.destiny.latitude == destiny.latitude)
        XCTAssertTrue(sut.destiny.longitude == destiny.longitude)
    }
    
    func testCreateMapRouteWithAllParams() {
        let destiny = MapLocation(latitude: 41.380775, longitude: 2.173661)
        let origin = MapLocation(latitude: 40.380775, longitude: 1.173661)
        
        let sut = MapRoute(origin: origin, destiny: destiny, mode: .car)
        
        XCTAssertTrue(sut.destiny.latitude == destiny.latitude)
        XCTAssertTrue(sut.destiny.longitude == destiny.longitude)
        XCTAssertTrue(sut.origin?.latitude == origin.latitude)
        XCTAssertTrue(sut.origin?.longitude == origin.longitude)
        XCTAssertTrue(sut.mode == .car)
    }
}
