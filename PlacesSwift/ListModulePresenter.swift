//
//  ListModulePresenter.swift
//  PlacesSwift
//
//  Created by azat on 12/03/16.
//  Copyright © 2016 azat. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class ListModulePresenter: ListInteractorOutput, ListViewOutput {
    
    var interactor: ListInteractorInput? = nil
    
    weak var userInterface: ListModuleView? = nil
    
    func placesListFetched(list:[PlaceModel])
    {
        
        self.userInterface?.showPlacesList(self.mapModels(list))
    }
    
    func placeImageFetched(place: PlaceModel, image:UIImage)
    {
        
    }
    
    func loadImageOfPlace(place: PlaceUIModel)
    {
        
    }
    
    func handleVisisbilityChange(isVisible: Bool)
    {
        if isVisible
        {
            let somePlace = CLLocationCoordinate2D(latitude: 55.0, longitude: 44.0)
            self.interactor?.fetchPlacesList(around:somePlace)
        }
    }
    
    private func mapModels(inModels:[PlaceModel]) -> [PlaceUIModel]
    {
        return inModels.map({ (input: PlaceModel) -> PlaceUIModel in
            let output = PlaceUIModel(withId: input.id)
            output.name = input.name
            return output
        })
    }
}