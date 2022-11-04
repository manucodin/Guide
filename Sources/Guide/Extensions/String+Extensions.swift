//
//  String+Extensions.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 30/10/22.
//

import Foundation

internal extension String {
    var localized: String {
        return NSLocalizedString(self, bundle: Bundle.module,comment: "")
    }
}
