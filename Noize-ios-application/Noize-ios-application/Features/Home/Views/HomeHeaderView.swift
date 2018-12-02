//
//  HomeHeaderView.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-11-30.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

class HomeHeaderView: UIView {
    
    private let noizeLogo = UIImageView().then {
        $0.image = UIImage(named: "noizePurpleLogo")
    }
    
    private let messageIcon = UIImageView().then {
        $0.image = UIImage(named: "messageIcon")
    }
    
    init() {
        super.init(frame: .zero)
        
        layoutViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeHeaderView {
    func layoutViews() {
        addSubview(noizeLogo)
        noizeLogo.easy.layout(Left(20), Width(130), Height(30), CenterY())
        
        addSubview(messageIcon)
        messageIcon.easy.layout(Right(20), Width(45), Height(45), CenterY())
    }
}
