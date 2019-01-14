//
//  TripFunctions.swift
//  TripApp
//
//  Created by Shubhank Sahay Personal on 12/26/18.
//  Copyright © 2018 Shubhank Sahay Personal. All rights reserved.
//

import Foundation

class TripFunctions {
    static func createTrip(tripModel: TripModel) {
        
    }
    //Wtf is @escaping??
    static func readTrips ( completion: @escaping ( ) -> ( )) {
        //Populates the tableview if there is no localized data. We don't know how long it's going to take to get the local data, so we execute this on a background thread.
        DispatchQueue.global(qos: .userInteractive).async {
            if Data.tripModels.count == 0 {
                Data.tripModels.append(TripModel(title: "Trip to New Delhi"))
                Data.tripModels.append(TripModel(title: "Trip to Kerala"))
                Data.tripModels.append(TripModel(title: "Trip to Paris"))
                Data.tripModels.append(TripModel(title: "Trip to London"))
                Data.tripModels.append(TripModel(title: "Trip to Boulder"))
            }
            //placed here so it executes, right after it gets the data. If its outside the bracket, it exectures after
            DispatchQueue.main.async {
                completion( )
            }
        }
    }
    
    static func updateTrip (tripModel: TripModel) {
        
    }
    static func deleteTrip (tripModel: TripModel) {
        
    }
}
