//
//  ListInteractorInput.swift
//  PlacesSwift
//
//  Created by azat on 12/03/16.
//  Copyright © 2016 azat. All rights reserved.
//

import Foundation
import CoreLocation

protocol ListInteractorInput: class
{
    func fetchPlacesList(around coordinate: CLLocationCoordinate2D)
    func fetchImageOfPlace(place: PlaceUIModel)
}