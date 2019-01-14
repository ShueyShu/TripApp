//
//  TripsTableViewCell.swift
//  TripApp
//
//  Created by Shubhank Sahay Personal on 1/13/19.
//  Copyright © 2019 Shubhank Sahay Personal. All rights reserved.
//

import UIKit

class TripsTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cardView.addShadowandRoundedCorners( )
//        titleLabel.font = UIFont(name:Theme.mainFontName, size: 32)
    }
    
    func setup(tripModel: TripModel) {
        titleLabel.text = tripModel.title
    }

}
