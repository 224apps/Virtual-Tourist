//
//  UIApplication+Utils.swift
//  Virtual Tourist
//
//  Created by Abdoulaye Diallo on 4/24/20.
//  Copyright © 2020 Abdoulaye Diallo. All rights reserved.
//

import UIKit

extension UIApplication {

    /// Display or hides the app's networking activity indicator.
    func enableNetworkingActivityIndicator(_ isEnabled: Bool) {
        DispatchQueue.main.async {
            self.isNetworkActivityIndicatorVisible = isEnabled
        }
    }
}
