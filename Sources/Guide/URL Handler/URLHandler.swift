//
//  URLHandler.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 29/10/22.
//

import UIKit
import Foundation

internal class URLHandler {
    static func openURL(url: String, withQueryItems queryItems: [URLQueryItem]) {
        guard var urlComponents = URLComponents(string: url) else { return }
                
        urlComponents.queryItems = queryItems
        
        guard let url = urlComponents.url else { return }
        
        UIApplication.shared.open(url)
    }
}
