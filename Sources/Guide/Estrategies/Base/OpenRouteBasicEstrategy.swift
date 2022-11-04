//
//  RouteredEstrategyProtocol.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 29/10/22.
//

import UIKit
import Foundation

protocol RouteredEstrategyProtocol {
    var name: String { get }
    var scheme: String { get }
    var isInstalled: Bool { get }
    var supportedModes: [RouteMode] { get }

    func isSupported(mode: RouteMode) -> Bool
    func launch(origin: Routable?, destiny: Routable, mode: RouteMode?)
}

extension RouteredEstrategyProtocol {
    var isInstalled: Bool {
        guard let url = URL(string: scheme) else { return false }
        
        return UIApplication.shared.canOpenURL(url)
    }
}
