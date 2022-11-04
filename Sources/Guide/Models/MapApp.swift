//
//  MapApp.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 27/10/22.
//

import Foundation

public enum MapApp: String, CaseIterable {
    case googleMaps
    case appleMaps
    
    public var name: String {
        return strategy.name
    }
    
    public var scheme: String {
        return strategy.scheme
    }
    
    public var isInstalled: Bool {
        return strategy.isInstalled
    }
    
    internal var strategy: RouteredEstrategyProtocol {
        switch self {
        case .appleMaps: return AppleMapsEstrategy()
        case .googleMaps: return GoogleMapsEstrategy()
        }
    }
    
    internal func isSupported(_ mode: RouteMode? = nil) -> Bool {
        guard let mode else { return true }
        
        return strategy.isSupported(mode: mode)
    }
    
    internal func launch(route: MapRoute) {
        strategy.launch(origin: route.origin, destiny: route.destiny, mode: route.mode)
    }
}
