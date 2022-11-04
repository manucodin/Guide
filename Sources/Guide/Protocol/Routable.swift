//
//  Routable.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 28/10/22.
//

import Foundation
import CoreLocation

public protocol Routable {
    var latitude: Double { get }
    var longitude: Double { get }
}

extension CLLocation: Routable {
    public var latitude: Double {
        return self.coordinate.latitude
    }
    
    public var longitude: Double {
        return self.coordinate.longitude
    }
}

extension CLLocationCoordinate2D: Routable {}
