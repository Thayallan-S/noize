//
//  RecentNoiseView.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-12-01.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

class RecentNoiseView: UIView {
    
    private let contentView = UIView()
    
    private let timeLabel = UILabel().then {
        $0.textColor = UI.Colors.white
        $0.font = UI.Font.demiBold(25)
        $0.text = "NOW"
        $0.textAlignment = .center
    }
    
    private let noiseLevelLabel = UILabel().then {
        $0.textColor = UI.Colors.white
        $0.font = UI.Font.demiBold(15)
        $0.textAlignment = .center
    }
    
    init(noiseLevel: String) {
        super.init(frame: .zero)
        
        self.noiseLevelLabel.text = loudness(noiseLevel: noiseLevel)
        self.contentView.backgroundColor = backgroundColorIdentifier(noiseLevel: noiseLevel)
        
        setupProperties()
        layoutViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RecentNoiseView {
    func setupProperties() {
        contentView.layer.cornerRadius = 15
    }
    
    func layoutViews() {
        addSubview(contentView)
        contentView.easy.layout(Edges())
        
        contentView.addSubview(timeLabel)
        timeLabel.easy.layout(Top(10), CenterX())
        
        contentView.addSubview(noiseLevelLabel)
        noiseLevelLabel.easy.layout(Top(10).to(timeLabel), CenterX())
        
    }
    
    func loudness(noiseLevel: String) -> String {
        if (noiseLevel as NSString).intValue > 150 {
            return "Extremely Loud - " + noiseLevel
        }
        else if (noiseLevel as NSString).intValue > 100 {
            return "Loud - " + noiseLevel
        }
        else if (noiseLevel as NSString).intValue > 50 {
            return "Semi-loud - " + noiseLevel
        }
        else {
            return "Safe - " + noiseLevel
        }
    }
    
    func backgroundColorIdentifier(noiseLevel: String) -> UIColor {
        if (noiseLevel as NSString).intValue > 150 {
            return UI.Colors.red
        }
        else if (noiseLevel as NSString).intValue > 100 {
            return UI.Colors.yellow
        }
        else if (noiseLevel as NSString).intValue > 50 {
            return UI.Colors.lightGrey
        }
        else {
            return UI.Colors.purple
            
        }
    }
}
