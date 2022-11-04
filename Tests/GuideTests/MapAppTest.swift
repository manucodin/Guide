//
//  MapAppTest.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 1/11/22.
//

import XCTest

@testable import Guide

final class MapAppTest: XCTestCase {
    func testMapAppAppleMaps() {
        let appleMapsStrategy = AppleMapsEstrategy()
        let sut: MapApp = .appleMaps
        
        XCTAssertTrue(sut.strategy is AppleMapsEstrategy)
        XCTAssertEqual(sut.name, appleMapsStrategy.name)
        XCTAssertEqual(sut.scheme, appleMapsStrategy.scheme)
        XCTAssertTrue(sut.isSupported(.car))
    }
    
    func testMapAppGoogleMaps() {
        let googleMapsStrategy = GoogleMapsEstrategy()
        let sut: MapApp = .googleMaps
        
        XCTAssertTrue(sut.strategy is GoogleMapsEstrategy)
        XCTAssertEqual(sut.name, googleMapsStrategy.name)
        XCTAssertEqual(sut.scheme, googleMapsStrategy.scheme)
        XCTAssertTrue(sut.isSupported(.car))
    }
}
