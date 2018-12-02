//
//  HomeFlowController.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-11-30.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit

class HomeFlowController: UIViewController {
    
    private let homeTabBarController = HomeTabBarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func start() {
        add(childController: homeTabBarController)
    }
}



