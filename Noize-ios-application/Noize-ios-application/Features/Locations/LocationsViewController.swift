//
//  LocationsViewController.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-12-01.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

class LocationsViewController: UIViewController {
    
    let scrollView = LocationsScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("\(scrollView.contentSize) ---")
        scrollView.contentSize = CGSize(width: 375, height: 1000)
    }
}

extension LocationsViewController {
    func layoutViews() {
        view.addSubview(scrollView)
        scrollView.easy.layout(Top(), Bottom(), Width(375))
    }
}
