//
//  TripsViewController.swift
//  TripApp
//
//  Created by Shubhank Sahay Personal on 12/26/18.
//  Copyright © 2018 Shubhank Sahay Personal. All rights reserved.
//

import Foundation

import UIKit
//TripsViewController delegates to yableview on Data to pass
class TripsViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var addButton: FloatingActionButton!
    
    override func viewDidLoad() {
        super.viewDidLoad( )
        
        tableview.dataSource = self
        tableview.delegate = self

        TripFunctions.readTrips (completion: {  [ weak self] in
            self?.tableview.reloadData( )
        } )
        
        view.backgroundColor = Theme.background
        
//        addButton.createFloatingActionButton( )
    }
}

extension TripsViewController: UITableViewDataSource, UITableViewDelegate {
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return Data.tripModels.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TripsTableViewCell
            
            cell.setup(tripModel: Data.tripModels[indexPath.row])
            
            return cell
        }

        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 160
        }
}



