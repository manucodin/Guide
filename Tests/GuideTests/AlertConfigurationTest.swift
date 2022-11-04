//
//  AlertConfigurationTest.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 1/11/22.
//

import XCTest

@testable import Guide

final class AlertConfigurationTest: XCTestCase {
    func testCreateAlertConfiguration() {
        let sut = AlertConfiguration(
            title: "test title",
            message: "test message",
            style: .alert,
            currentViewController: UIViewController(),
            completionCallback: { _ in },
            cancelCallback: {  }
        )
        
        XCTAssertNotNil(sut.title)
        XCTAssertNotNil(sut.message)
        XCTAssertTrue(sut.style == .alert)
        XCTAssertNotNil(sut.completionCallback)
        XCTAssertNotNil(sut.cancelCallback)
    }
}
