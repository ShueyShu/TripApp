//
//  AppButton.swift
//  TripApp
//
//  Created by Shubhank Sahay Personal on 1/15/19.
//  Copyright © 2019 Shubhank Sahay Personal. All rights reserved.
//

import UIKit

//Make sure to set these as classes to inherit from in the nib file
class AppButton: UIButton {
    //super refers to UIButton, the overarching class you're inheriting from or subclassing.
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = Theme.tintColor
        layer.cornerRadius = 3
        
        setTitleColor(UIColor.white, for: .normal)
        
        
        
    }

}
