//
//  ComingSoonViewController.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-11-30.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import Then
import EasyPeasy

class ComingSoonViewController: UIViewController {
    
    private let backgroundImageView = UIImageView(image: UIImage(named: "comingSoonBackground")!).then {
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = false
    }
    
    
    private let comingSoonLabel = UILabel().then {
        $0.text  = "This Page is Coming Soon"
        $0.font = UI.Font.headerRegularA
        $0.textColor = UI.Colors.lightGrey
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutViews()
    }
}

// MARK: Layout Views
extension ComingSoonViewController {
    func layoutViews() {
        layoutBackgroundImageView()
        layoutComingSoonLabel()
    }
    
    func layoutBackgroundImageView() {
        view.addSubview(backgroundImageView)
        backgroundImageView.easy.layout(Top(-2), Bottom(110), Left(-1), Right(-1))
    }
    
    
    
    func layoutComingSoonLabel() {
        view.addSubview(comingSoonLabel)
        comingSoonLabel.easy.layout(NoizeDevice().isiPhone6() ? Top(204) : Top(180), CenterX(0))
    }
}

