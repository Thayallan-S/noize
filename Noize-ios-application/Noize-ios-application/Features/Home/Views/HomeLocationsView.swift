//
//  HomeLocationsView.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-11-30.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

class HomeLocationsView: UIView{
    
    private let contentView = UIView()
    
    private let mapImage = UIImageView().then {
        $0.contentMode = .scaleAspectFill
    }
    
    private let shadowView = UIView()
    
    private let fuzzView = UIView()
    
    private let jobLabel = UILabel().then {
        $0.textColor = UI.Colors.purple
        $0.font = UI.Font.demiBold(18)
    }
    
    init(jobLabel: String, backgroundColor: UIColor, mapImage: String) {
        super.init(frame: .zero)
        
        self.jobLabel.text = jobLabel
        self.contentView.backgroundColor = backgroundColor
        self.mapImage.image = UIImage(named: mapImage)
        
        setupProperties()
        layoutViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeLocationsView {
    func setupProperties() {
        
        contentView.layer.cornerRadius = 5.0
        contentView.clipsToBounds = true
        contentView.layer.borderWidth = 0.5
        contentView.layer.borderColor = UI.Colors.lightGrey.cgColor
        
        
        shadowView.layer.shadowColor = UI.Colors.black.cgColor
        shadowView.layer.shadowOpacity = 0.2
        shadowView.layer.shadowRadius = 5.0
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        fuzzView.backgroundColor = UIColor(white: 1, alpha: 0.5)
        
        
    }
}


extension HomeLocationsView {
    func layoutViews() {
        addSubview(contentView)
        contentView.easy.layout(Edges())
        
        contentView.addSubview(mapImage)
        mapImage.easy.layout(Edges())
        
        mapImage.addSubview(fuzzView)
        fuzzView.easy.layout(Width(170), Height(40), Bottom())
        
        addSubview(shadowView)
        easy.layout(Edges())
        
        fuzzView.addSubview(jobLabel)
        jobLabel.easy.layout(Bottom(5), CenterX())
    
    }
}
