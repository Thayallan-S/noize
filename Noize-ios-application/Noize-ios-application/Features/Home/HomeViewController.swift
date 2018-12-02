//
//  HomeViewController.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-11-30.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

class HomeViewController: UIViewController {
    
    private let headerView = HomeHeaderView()
    
    private let textView = HomeSearchTextView()
    
    private let trendingLocationsLabel = UILabel().then {
        $0.textColor = UI.Colors.purple
        $0.font = UI.Font.demiBold(25)
        $0.text = "Trending Locations"
    }
    
    private let findMoreView = UIView().then {
        $0.backgroundColor = UI.Colors.purple
        $0.layer.cornerRadius = 20.0
    }
    
    private let findMoreLabel = UILabel().then {
        $0.textColor = UI.Colors.white
        $0.font = UI.Font.demiBold(15)
        $0.text = "Find More"
    }
    
    private let learnMoreView = UIView().then {
        $0.backgroundColor = UI.Colors.purple
        $0.layer.cornerRadius = 25.0
    }
    
    private let learnMoreLabel = UILabel().then {
        $0.textColor = UI.Colors.white
        $0.font = UI.Font.demiBold(20)
        $0.text = "Learn More"
    }
    
    private let infoLabel = UILabel().then {
        $0.textColor = UI.Colors.purple
        $0.font = UI.Font.medium(15)
        $0.text = "Learn more on how you can join the Noize community to help make the world smarter !"
        $0.textAlignment = .center
        $0.numberOfLines = 0
    }
    
    private let location1View = HomeLocationsView(jobLabel: "Yonge & Dundas", backgroundColor: UI.Colors.lightGrey, mapImage: "mapImageA")

    private let location2View = HomeLocationsView(jobLabel: "City Hall", backgroundColor: UI.Colors.lightGrey, mapImage: "mapImageB")
    
    private let location3View = HomeLocationsView(jobLabel: "Bay & Dundas", backgroundColor: UI.Colors.lightGrey, mapImage: "mapImageC")
    
    private let location4View = HomeLocationsView(jobLabel: "Google HQ", backgroundColor: UI.Colors.lightGrey, mapImage: "mapImageD")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutViews()
    }
}

extension HomeViewController {
    func layoutViews() {
        view.addSubview(headerView)
        headerView.easy.layout(Top(35), Width(375), Height(70))
        
        view.addSubview(textView)
        textView.easy.layout(Top().to(headerView), CenterX(), Width(325), Height(50))
        
        view.addSubview(trendingLocationsLabel)
        trendingLocationsLabel.easy.layout(Top(20).to(textView), Left(15))
        
        view.addSubview(findMoreView)
        findMoreView.easy.layout(Top(20).to(textView), Right(25), Width(100), Height(40))
        
        findMoreView.addSubview(findMoreLabel)
        findMoreLabel.easy.layout(CenterX(), CenterY())
        
        view.addSubview(location1View)
        location1View.easy.layout(Top(20).to(trendingLocationsLabel), Left(12), Width(170), Height(170))
        
        view.addSubview(location2View)
        location2View.easy.layout(Top(20).to(trendingLocationsLabel), Right(12), Width(170), Height(170))
        
        view.addSubview(location3View)
        location3View.easy.layout(Top(15).to(location1View), Left(12), Width(170), Height(170))
        
        view.addSubview(location4View)
        location4View.easy.layout(Top(15).to(location2View), Right(12), Width(170), Height(170))
        
        view.addSubview(learnMoreView)
        learnMoreView.easy.layout(Top(20).to(location4View), CenterX(), Width(150), Height(50))
        
        learnMoreView.addSubview(learnMoreLabel)
        learnMoreLabel.easy.layout(CenterX(), CenterY())
        
        view.addSubview(infoLabel)
        infoLabel.easy.layout(Top(10).to(learnMoreView), Left(10), Right(10))
        
    }
}
