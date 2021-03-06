//
//  NoizeBackButtonView.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-12-01.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

protocol NoizeBackButtonDelegate: class {
    func didTapBackButton()
}

class NoizeBackButtonView: UIView {
    
    weak var delegate: NoizeBackButtonDelegate?
    
    private let backButtonView = UIImageView().then {
        $0.image = UIImage(named: "backIcon")
    }
    
    private let selectionButton = UIButton().then {
        $0.addTarget(self, action: #selector(handleButtonTap), for: .touchUpInside)
        
    }
    
    @objc func handleButtonTap() {
        delegate?.didTapBackButton()
    }
    
    init(){
        super.init(frame: .zero)
        layoutViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension NoizeBackButtonView {
    func layoutViews(){
        addSubview(backButtonView)
        backButtonView.easy.layout(Edges())
        
        addSubview(selectionButton)
        selectionButton.easy.layout(Edges())
    }
}




