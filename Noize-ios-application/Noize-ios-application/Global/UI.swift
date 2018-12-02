//
//  UI.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-06-11.
//  Copyright © 2018 Noize. All rights reserved.
//

import Foundation
import UIKit

struct UI {
    struct Colors {
        static let white = UIColor.white
        static let black = UIColor.black
        static let lightGrey = UIColor(hexValue: 0xCCCCCC)
        static let backgroundColor = UIColor(hexValue: 0xFCFCFC)
        static let purple = UIColor(hexValue: 0xa911c7)
        static let red = UIColor(hexValue: 0xff0000)
        static let yellow = UIColor(hexValue: 0xf1f442)
    }
    
    struct Font {
        
        // MARK: - New Fonts
        static let headerA = regular(20)
        static let headerB = regular(16)
        
        // MARK: Title Fonts
        static let titleMediumA = medium(30)
        
        // MARK: Header Fonts
        static let headerRegularA = regular(24)
        
        // MARK: Sub-Header Fonts
        static let subHeaderMediumA   = medium(18)
        static let subHeaderDemiBoldA = demiBold(18)
        
        // MARK: Text Fonts
        static let textRegularA  = regular(12)
        static let textDemiBoldA = demiBold(12)
        static let textMediumB   = medium(14)
        static let textRegularC  = regular(16)
        
        // MARK: Other Fonts
        static let tabBarMenu = demiBold(10)
        static let homeHeaderButton = regular(10)
        
        static func ultraLight(_ size: CGFloat = 12) -> UIFont {
            return UIFont(name: "AvenirNext-UltraLight", size: size)!
        }
        
        static func regular(_ size: CGFloat = 12) -> UIFont {
            return UIFont(name: "AvenirNext-Regular", size: size)!
        }
        
        static func medium(_ size: CGFloat = 12) -> UIFont {
            return UIFont(name: "AvenirNext-Medium", size: size)!
        }
        
        static func demiBold(_ size: CGFloat = 12) -> UIFont {
            return UIFont(name: "AvenirNext-DemiBold", size: size)!
        }
    }
}
