//
//  LocationsScrollView.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-12-01.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy

class LocationsScrollView: UIScrollView {
    
    var viewMapButton = LocationsViewMapButton()
    
    private let locationsTextView = HomeSearchTextView()
    
    let utscCardView = LocationsCardView(locationName: "University of Toronto Scarborough", image: "mapImageALocation")
    
    private let yongeCardView = LocationsCardView(locationName: "Yonge & Dundas", image: "mapImageALocation")
    
    private let cityHallCardView = LocationsCardView(locationName: "City Hall", image: "mapImageBLocation")
    
    private let bayCardView = LocationsCardView(locationName: "Bay & Dundas", image: "mapImageCLocation")
    
    private let googleCardView = LocationsCardView(locationName: "Google Headquarters", image: "mapImageDLocation")
    
    init() {
        super.init(frame: .zero)
        layoutViews()
        setupProperties()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Setup Properties
extension LocationsScrollView {
    func setupProperties() {
        backgroundColor = UI.Colors.white
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
}

// MARK: - Layout Views
extension LocationsScrollView {
    func layoutViews() {
        
        addSubview(viewMapButton)
        viewMapButton.easy.layout(Top(30), Left(25), Width(100), Height(40))
        
        addSubview(locationsTextView)
        locationsTextView.easy.layout(Top(10).to(viewMapButton), CenterX(), Width(325), Height(50))
        
        addSubview(utscCardView)
        utscCardView.easy.layout(Top(20).to(locationsTextView), Width(325), Height(150), CenterX())
        
        addSubview(yongeCardView)
        yongeCardView.easy.layout(Top(20).to(utscCardView), Width(325), Height(150), CenterX())
        
        addSubview(cityHallCardView)
        cityHallCardView.easy.layout(Top(20).to(yongeCardView), Width(325), Height(150), CenterX())
        
        addSubview(bayCardView)
        bayCardView.easy.layout(Top(20).to(cityHallCardView), Width(325), Height(150), CenterX())
        
        addSubview(googleCardView)
        googleCardView.easy.layout(Top(20).to(bayCardView), Width(325), Height(150), CenterX())
    }
}



