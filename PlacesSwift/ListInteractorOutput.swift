//
//  ListInteractorOutput.swift
//  PlacesSwift
//
//  Created by azat on 12/03/16.
//  Copyright © 2016 azat. All rights reserved.
//

import Foundation
import UIKit

protocol ListInteractorOutput: class
{
    func placesListFetched(list:[PlaceModel])
    
    func placeImageFetched(place: PlaceModel, image:UIImage)
}