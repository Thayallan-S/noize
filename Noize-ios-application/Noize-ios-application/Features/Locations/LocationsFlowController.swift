//
//  LocationsFlowController.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-12-01.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit

class LocationsFlowController: UIViewController {
    
    let locationsViewController = LocationsViewController()
    let mapViewController = MapViewController()
    let noizeViewController = NoizeViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationsViewController.scrollView.viewMapButton.delegate = self
        locationsViewController.scrollView.utscCardView.delegate = self
        
        noizeViewController.backButton.delegate = self
        
        mapViewController.backButton.delegate = self

        start()
    }
    
    func start() {
        add(childController: locationsViewController)
    }
}

extension LocationsFlowController: LocationsViewMapButtonDelegate {
    func didTapViewMap() {
        remove(childController: locationsViewController)
        add(childController: mapViewController)
    }
}

extension LocationsFlowController: ViewMapBackButtonDelegate {
    func didTapBack() {
        remove(childController: mapViewController)
        add(childController: locationsViewController)
    }
}

extension LocationsFlowController: LocationCardButtonDelegate {
    func didTapCard() {
        remove(childController: locationsViewController)
        add(childController: noizeViewController)
        noizeViewController.update()
    }
}

extension LocationsFlowController: NoizeBackButtonDelegate {
    func didTapBackButton() {
        remove(childController: noizeViewController)
        add(childController: locationsViewController)
    }
}
