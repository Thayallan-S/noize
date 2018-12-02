//
//  HomeSearchTextView.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-11-30.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

class HomeSearchTextView: UIView {
    
    let contentview = UIView()
    
    let textContentView = UIView()
    
    let searchIcon = UIImageView().then {
        $0.image = UIImage(named: "searchIcon")
    }
    
    let textField = UITextField().then {
        $0.textColor = UI.Colors.lightGrey
        $0.font = UI.Font.demiBold(17)
        $0.placeholder = "Find Noize monitored locations"
        $0.keyboardType = .default
    }
    
    init() {
        super.init(frame: .zero)
        
        setupProperties()
        layoutViews()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeSearchTextView {
    func setupProperties() {
        contentview.layer.borderWidth = 0.5
        contentview.layer.borderColor = UI.Colors.lightGrey.cgColor
        contentview.layer.cornerRadius = 7.0
    }
    
    func layoutViews() {
        addSubview(contentview)
        contentview.easy.layout(Edges())
        
        contentview.addSubview(searchIcon)
        searchIcon.easy.layout(Left(10), CenterY(), Width(20), Height(20))
        
        contentview.addSubview(textContentView)
        textContentView.easy.layout(Left(10).to(searchIcon), Height(50), Width(275), CenterY())
        
        textContentView.addSubview(textField)
        textField.easy.layout(Edges())
    }
}

