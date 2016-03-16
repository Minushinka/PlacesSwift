//
//  ListPresenter.swift
//  PlacesSwift
//
//  Created by azat on 12/03/16.
//  Copyright © 2016 azat. All rights reserved.
//

import Foundation

protocol ListViewOutput: class
{
    func loadImageOfPlace(place: PlaceUIModel)
    func handleVisisbilityChange(isVisible: Bool)
}