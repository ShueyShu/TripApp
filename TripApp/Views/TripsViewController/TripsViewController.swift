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
class TripsViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad( )
        
        tableview.dataSource = self
        
        //changing from strong to weak reference
        TripFunctions.readTrips (completion: {  [ weak self] in
            self?.tableview.reloadData( )
        } )
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        //you use an ! instead of a ? for an optional when you're certain it has a value
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        }
        
        cell!.textLabel?.text = Data.tripModels[indexPath.row].title
        
        return cell!
    }
}

