//
//  UIViewExtensions.swift
//  TripApp
//
//  Created by Shubhank Sahay Personal on 1/13/19.
//  Copyright © 2019 Shubhank Sahay Personal. All rights reserved.
//

import UIKit
import Foundation

extension UIView {
    func addShadowandRoundedCorners ( ) {
        layer.cornerRadius = 6
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 2
        layer.shadowOffset = CGSize(width: 0, height: 4)
    }
}
