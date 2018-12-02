//
//  MapViewController.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-12-01.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

class MapViewController: UIViewController {
    
    let backButton = ViewMapBackButtonView()
    
    let mapView = UIImageView().then {
        $0.image = UIImage(named: "utscView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutViews()
    }
}

extension MapViewController {
    func layoutViews() {
        view.addSubview(backButton)
        backButton.easy.layout(Top(60), Left(15), Width(40), Height(40))
        
        view.addSubview(mapView)
        mapView.easy.layout(Width(375), Height(675), CenterX(), Bottom())
        
    }
}
