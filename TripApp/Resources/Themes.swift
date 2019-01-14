//
//  Themes.swift
//  TripApp
//
//  Created by Shubhank Sahay Personal on 1/13/19.
//  Copyright © 2019 Shubhank Sahay Personal. All rights reserved.
//

import UIKit

//Reason you use static is to not instantiate the theme class everytime you use one of its properties
class Theme {
    static let mainFontName = "Heebo-Regular"
    static let subFontName = "Heebo-Light"
    static let accent = UIColor(named: "Accent")
    static let background = UIColor(named: "Background")
    static let tint = UIColor(named: "Tint")
    static let shadow = UIColor(named: "Shadow")
}
