//
//  ListWireframe.swift
//  PlacesSwift
//
//  Created by azat on 16/03/16.
//  Copyright © 2016 azat. All rights reserved.
//

import UIKit

class ListWireframe {
    
    let listViewController = ListViewController()
    let presenter = ListModulePresenter()
    let interactor = ListInteractor()
    
    func presentPlacesList(fromController controller:UINavigationController)
    {
        self.listViewController.eventHandler = self.presenter
        self.presenter.userInterface = self.listViewController
        self.interactor.output = self.presenter
        self.presenter.interactor = interactor
        
        controller.pushViewController(listViewController, animated: true)
    }
    
}
