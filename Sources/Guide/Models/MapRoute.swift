//
//  MapRoute.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 1/11/22.
//

import Foundation

public struct MapRoute {
    let origin: Routable?
    let destiny: Routable
    let mode: RouteMode?
    
    public init(origin: Routable? = nil, destiny: Routable, mode: RouteMode? = nil) {
        self.origin = origin
        self.destiny = destiny
        self.mode = mode
    }
}
