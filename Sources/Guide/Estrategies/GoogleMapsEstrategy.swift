//
//  GoogleMapsEstrategy.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 29/10/22.
//

import UIKit
import Foundation

internal class GoogleMapsEstrategy: RouteredEstrategyProtocol {
    var name: String {
        "Google Maps"
    }
    
    var scheme: String {
        "comgooglemaps://"
    }
    
    var supportedModes: [RouteMode] {
        return RouteMode.allCases
    }
    
    func isSupported(mode: RouteMode) -> Bool {
        return supportedModes.contains(mode)
    }
    
    func launch(origin: Routable?, destiny: Routable, mode: RouteMode?) {
        var queryParams = [URLQueryItem]()
        queryParams.append(contentsOf: locationParams(origin: origin, destiny: destiny))
        
        if let mode, let modeParam = modeParam(mode: mode) {
            queryParams.append(modeParam)
        }
        
        URLHandler.openURL(url: scheme, withQueryItems: queryParams)
    }
    
    private func locationParams(origin: Routable?, destiny: Routable) -> [URLQueryItem] {
        var queryItems = [URLQueryItem]()
        if let origin {
            queryItems.append(URLQueryItem(name: "saddr", value: "\(origin.latitude),\(origin.longitude)"))
        }
        queryItems.append(URLQueryItem(name: "daddr", value: "\(destiny.latitude),\(destiny.longitude)"))
        return queryItems
    }
    
    private func modeParam(mode: RouteMode) -> URLQueryItem? {
        guard let modeValue = getModeValue(mode: mode) else { return nil }
        
        return URLQueryItem(name: "directionsmode", value: modeValue)
    }
    
    private func getModeValue(mode: RouteMode) -> String? {
        switch mode {
        case .car: return "driving"
        case .walkin: return "walking"
        case .publicTransport: return "transit"
        case .cycling: return "bicycling"
        }
    }
}
