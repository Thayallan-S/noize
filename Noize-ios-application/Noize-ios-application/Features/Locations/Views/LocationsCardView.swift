//
//  LocationsCardView.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-12-01.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

protocol LocationCardButtonDelegate: class {
    func didTapCard()
}

class LocationsCardView: UIView {
    
    weak var delegate: LocationCardButtonDelegate?
    
    private let contentView = UIView()
    
    private let image = UIImageView()
    
    private let shadowView = UIView()
    
    private let textAreaView = UIView()
    
    let selectionButton = UIButton().then {
        $0.addTarget(self, action: #selector(handleButtonTap), for: .touchUpInside)
        
    }
    
    @objc func handleButtonTap() {
        delegate?.didTapCard()
    }
    
    
    private let locationLabel = UILabel().then {
        $0.textColor = UI.Colors.white
        $0.font = UI.Font.demiBold(20)
    }
    
    init(locationName: String, image: String) {
        super.init(frame: .zero)
        
        self.locationLabel.text = locationName
        self.image.image = UIImage(named: image)
        
        setupProperties()
        layoutViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension LocationsCardView {
    func setupProperties() {
        contentView.layer.cornerRadius = 10.0
        contentView.clipsToBounds = true
        contentView.backgroundColor = UI.Colors.lightGrey
        
        shadowView.layer.shadowColor = UI.Colors.black.cgColor
        shadowView.layer.shadowOpacity = 0.4
        shadowView.layer.shadowRadius = 10.0
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 4)

        
        textAreaView.backgroundColor = UI.Colors.purple
        textAreaView.clipsToBounds = true
    }
    
    func layoutViews() {
        addSubview(shadowView)
        shadowView.easy.layout(Edges())
        
        shadowView.addSubview(contentView)
        contentView.easy.layout(Edges())
        
        contentView.addSubview(selectionButton)
        selectionButton.easy.layout(Edges())
        
        contentView.addSubview(image)
        image.easy.layout(Edges())
        
        contentView.addSubview(textAreaView)
        textAreaView.easy.layout(Width(325), Height(60), Bottom(), CenterX())
        
        textAreaView.addSubview(locationLabel)
        locationLabel.easy.layout(Left(5), CenterY())
    }
}
