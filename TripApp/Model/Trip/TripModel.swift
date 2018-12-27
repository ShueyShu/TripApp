//
//  TripModel.swift
//  TripApp
//
//  Created by Shubhank Sahay Personal on 12/26/18.
//  Copyright © 2018 Shubhank Sahay Personal. All rights reserved.
//

import Foundation

class TripModel {
    var id: String!
    //Exclamation means that it's required
    var title: String!
    
    init(title: String) {
        //UUID creates a unique identifier of a string type
        id = UUID( ).uuidString
        //self points to the original title, and not the parameter defined in init.
        self.title = title
    }
}

