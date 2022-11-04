//
//  MapLocation.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 27/10/22.
//

import Foundation
import CoreLocation

public struct MapLocation {
    public let coordinate: CLLocationCoordinate2D
    
    public init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
    
    public init(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        self.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

extension MapLocation: Routable {
    public var latitude: Double {
        return self.coordinate.latitude
    }
    
    public var longitude: Double {
        return self.coordinate.longitude
    }
}
