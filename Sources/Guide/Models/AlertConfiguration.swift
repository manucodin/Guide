//
//  AlertConfiguration.swift
//  
//
//  Created by Manuel Rodriguez Sebastian on 1/11/22.
//

import UIKit
import Foundation

public struct AlertConfiguration {
    let title: String?
    let message: String?
    let style: UIAlertController.Style
    let currentViewController: UIViewController
    let completionCallback: ((MapApp) -> Void)?
    let cancelCallback: (() -> Void)?
    
    public init(title: String? = nil, message: String? = nil, style: UIAlertController.Style = .actionSheet, currentViewController: UIViewController, completionCallback: ((MapApp) -> Void)? = nil, cancelCallback: (() -> Void)? = nil) {
        self.title = title
        self.message = message
        self.style = style
        self.currentViewController = currentViewController
        self.completionCallback = completionCallback
        self.cancelCallback = cancelCallback
    }
}
