//
//  AddTripViewController.swift
//  TripApp
//
//  Created by Shubhank Sahay Personal on 1/15/19.
//  Copyright © 2019 Shubhank Sahay Personal. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {

    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tripTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.font = UIFont(name: Theme.mainFontName, size: 21)
            
        
 
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
