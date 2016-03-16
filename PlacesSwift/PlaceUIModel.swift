//
//  PlaceUIModel.swift
//  PlacesSwift
//
//  Created by azat on 12/03/16.
//  Copyright © 2016 azat. All rights reserved.
//

import Foundation
import UIKit

class PlaceUIModel:Equatable
{
    let id:String
    var name:String? = nil
    var image: UIImage? = nil
    
    init(withId id:String)
    {
        self.id = id
    }
    
}

func ==(lhs: PlaceUIModel, rhs: PlaceUIModel) -> Bool
{
    return lhs.id == rhs.id
}