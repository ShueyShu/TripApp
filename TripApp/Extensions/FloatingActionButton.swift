//
//  FloatingActionButton.swift
//  TripApp
//
//  Created by Shubhank Sahay Personal on 1/13/19.
//  Copyright © 2019 Shubhank Sahay Personal. All rights reserved.
//

import UIKit

class FloatingActionButton: UIButton {

    override func draw(_ rect: CGRect) {
        layer.backgroundColor = Theme.tint?.cgColor
        layer.cornerRadius = frame.height / 2
        layer.shadowOpacity = 1
        layer.shadowColor = Theme.shadow?.cgColor
        layer.shadowRadius = 3
        layer.shadowOffset = CGSize(width: 0, height: 10)
    }
}
