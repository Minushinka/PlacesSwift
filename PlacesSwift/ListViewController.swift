//
//  ViewController.swift
//  PlacesSwift
//
//  Created by azat on 12/03/16.
//  Copyright © 2016 azat. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController, ListModuleView
{
    var eventHandler: ListViewOutput?
    
    var places:[PlaceUIModel] = [PlaceUIModel]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.eventHandler?.handleVisisbilityChange(true)
    }
    
    func showPlacesList(places: [PlaceUIModel])
    {
        self.places = places
        self.tableView.reloadData()
    }
    
    func updatePlace(place: PlaceUIModel)
    {
        guard let index = self.places.indexOf(place) else
        {
            return
        }
        let indexPath = NSIndexPath(forRow: index, inSection: 0)
        
        if ((self.tableView.indexPathsForVisibleRows?.contains(indexPath)) != nil) {
            self.tableView .reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            
        }
    }
    
    
    func showLoader()
    {

    
    }

    func hideLoader()
    {
        
    }
    
    func showError(message: String)
    {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

