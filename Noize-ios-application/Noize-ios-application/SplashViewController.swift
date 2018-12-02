//
//  SplashViewController.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-11-30.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import Lottie
import EasyPeasy

class SplashViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UI.Colors.purple
        
        let imageView = UIImageView(image: UIImage(named: "noizeWhiteLogo"))
        view.addSubview(imageView)
        imageView.easy.layout(CenterX(), Width(250), Height(55), Top(250))
        
        let animationView = LOTAnimationView(name: "splash-view-controller-animation")
        self.view.addSubview(animationView)
        print("\(animationView.animationDuration)")
        animationView.play()
    }
}

