//
//  HomeTabBarController.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-11-30.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit

class HomeTabBarController: UITabBarController {
    
    let csvc1 = ComingSoonViewController()
    let csvc2 = ComingSoonViewController()
    let csvc3 = ComingSoonViewController()
    let homeViewController = HomeViewController()
    let locationsFlowController = LocationsFlowController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarProperties()
        setupViewControllers()
        
    }
}

extension HomeTabBarController {
    func setupTabBarProperties() {
        let attributes: [NSAttributedString.Key: Any] = [.font: UI.Font.tabBarMenu]
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: UIControl.State.normal)
        
        tabBar.isTranslucent = false
        tabBar.backgroundColor = UI.Colors.purple
        tabBar.layer.borderWidth = 0.1
        tabBar.tintColor = UI.Colors.purple
    }
}

// MARK: - Setup TabBar View Controllers
extension HomeTabBarController {
    func setupViewControllers() {
        let vc1 = createFirstViewController()
        let vc2 = createSecondViewController()
        let vc3 = createThirdViewController()
        
        
        self.viewControllers = [vc1, vc2, vc3]
        
        selectedIndex = 0
    }
    
    func createFirstViewController() -> UIViewController {
        var navigationVC = NoizeNavigationController(rootViewController: homeViewController)
        navigationVC = setupTabBarItem(for: navigationVC, title: "HOME", imageName: "homeIcon", selectedImageName: "")
        return navigationVC
    }
    
    func createSecondViewController() -> UIViewController {
        var navigationVC = NoizeNavigationController(rootViewController: locationsFlowController)
        navigationVC = setupTabBarItem(for: navigationVC, title: "LOCATIONS", imageName: "locationIcon", selectedImageName: "")
        return navigationVC
    }
    
    func createThirdViewController() -> UIViewController {
        var navigationVC = NoizeNavigationController(rootViewController: csvc3)
        navigationVC = setupTabBarItem(for: navigationVC, title: "MY ACCOUNT", imageName: "accountIcon", selectedImageName: "")
        return navigationVC
    }
    
    func setupTabBarItem(for navigationController: NoizeNavigationController, title: String, imageName: String, selectedImageName: String) -> NoizeNavigationController {
        let image = UIImage(named: imageName), selectedImage = UIImage(named: selectedImageName)
        navigationController.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: selectedImage)
        return navigationController
    }
}

