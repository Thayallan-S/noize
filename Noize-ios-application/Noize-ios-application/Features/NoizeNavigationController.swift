//
//  NoizeNavigationController.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-11-30.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit

class NoizeNavigationController: UINavigationController {
    
    // ENUMERATION - ScutoNavigationController Color Schemes
    enum NoizeNavigationControllerColorScheme {
        case white, black
    }
    
    var colorScheme: NoizeNavigationControllerColorScheme = .white {
        didSet {
            setColorScheme()
        }
    }
    
    init(rootViewController: UIViewController, colorScheme: NoizeNavigationControllerColorScheme = .white) {
        super.init(rootViewController: rootViewController)
        
        self.colorScheme = colorScheme
        
        setupNavigationControllerProperties()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: Override Variables and Functions
extension NoizeNavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        switch colorScheme {
        case .white:
            return .default
        case .black:
            return .lightContent
            
        }
    }
}

// EXTENSION - ScutoNavigationController View Customization
extension NoizeNavigationController {
    
    func setupNavigationControllerProperties() {
        isNavigationBarHidden = true
        setColorScheme()
    }
    
    func setColorScheme() {
        view.backgroundColor = UIColor.white
    }
}

