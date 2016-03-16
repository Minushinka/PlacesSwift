//
//  ListModuleView.swift
//  PlacesSwift
//
//  Created by azat on 12/03/16.
//  Copyright © 2016 azat. All rights reserved.
//

import Foundation

protocol ListModuleView: class
{
    func showPlacesList(places: [PlaceUIModel])
    func updatePlace(place: PlaceUIModel)
    
    func showLoader()
    func hideLoader()
    
    func showError(message: String)
}