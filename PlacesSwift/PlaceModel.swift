//
//  PlaceModel.swift
//  PlacesSwift
//
//  Created by azat on 12/03/16.
//  Copyright © 2016 azat. All rights reserved.
//

import Foundation

class PlaceModel:Equatable
{
    let id:String
    var name:String? = nil
    var imageURL: String? = nil
    
    init(withId id:String)
    {
        self.id = id
    }
}

func ==(lhs: PlaceModel, rhs: PlaceModel) -> Bool
{
    return lhs.id == rhs.id
}