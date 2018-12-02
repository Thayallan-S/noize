//
//  NoizeViewController.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-12-01.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

class NoizeViewController: UIViewController {

     let moswquitto = MosquittoServer()
    
    let backButton = ViewMapBackButtonView()
    
    let utscView = LocationsCardView(locationName: "University of Toronto Scarborough", image: "mapImageALocation")
    
    let recentNoisesLabel = UILabel().then {
        $0.textColor = UI.Colors.purple
        $0.font = UI.Font.demiBold(30)
        $0.text = "Recent Noise"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutViews()
        update()
    }
}

extension NoizeViewController {
    func layoutViews() {
        view.addSubview(backButton)
        backButton.easy.layout(Top(60), Left(15), Width(40), Height(40))
        
        view.addSubview(utscView)
        utscView.easy.layout(Top(20).to(backButton), Width(325), Height(150), CenterX())
        
        view.addSubview(recentNoisesLabel)
        recentNoisesLabel.easy.layout(Top(20).to(utscView), Left(15))
    }
    
    @objc func update() {
        let recentView = RecentNoiseView(noiseLevel: moswquitto.value)
        view.addSubview(recentView)
        recentView.easy.layout(Top(20).to(recentNoisesLabel), Width(200), Height(100), CenterX())
     
        
    }
}

