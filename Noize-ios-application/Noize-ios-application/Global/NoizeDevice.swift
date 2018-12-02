//
//  NoizeDevice.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-06-12.
//  Copyright © 2018 Noize. All rights reserved.
//

//import Foundation
import UIKit
import DeviceKit

struct NoizeDevice {
    
    let device = Device()
    
    func isiPhone6() -> Bool {
        return device.isOneOf([.iPhone6, .simulator(.iPhone6)])
    }
}
