//
//  LocationsViewMapButton.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-12-01.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

protocol LocationsViewMapButtonDelegate: class {
    func didTapViewMap()
}

class LocationsViewMapButton: UIView {
    
    weak var delegate: LocationsViewMapButtonDelegate?
    
    private let contentView = UIView()
    
    private let viewMapLabel = UILabel().then {
        $0.textColor = UI.Colors.white
        $0.font = UI.Font.demiBold(15)
        $0.text = "View Map"
    }
    
    let selectionButton = UIButton().then {
        $0.addTarget(self, action: #selector(handleButtonTap), for: .touchUpInside)
        
    }
    
    @objc func handleButtonTap() {
        delegate?.didTapViewMap()
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

extension LocationsViewMapButton {
    func setupProperties() {
        contentView.backgroundColor = UI.Colors.purple
        contentView.layer.cornerRadius = 5.0
    }
    
    func layoutViews() {
        addSubview(contentView)
        contentView.easy.layout(Edges())
        
        contentView.addSubview(viewMapLabel)
        viewMapLabel.easy.layout(CenterX(), CenterY())
        
        contentView.addSubview(selectionButton)
        selectionButton.easy.layout(Edges())
        
    }
}
