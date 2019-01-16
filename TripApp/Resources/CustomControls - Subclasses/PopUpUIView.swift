//
//  PopUpUIView.swift
//  TripApp
//
//  Created by Shubhank Sahay Personal on 1/15/19.
//  Copyright © 2019 Shubhank Sahay Personal. All rights reserved.
//

import UIKit

class PopUpUIView: UIView {

    //Subclassing
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 6
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 2
        layer.shadowOffset = CGSize(width: 0, height: 4)
        
    }

}
