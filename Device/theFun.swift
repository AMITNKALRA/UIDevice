//
//  theFun.swift
//  Device
//
//  Created by Amit Nivedan Kalra on 8/28/15.
//  Copyright © 2015 Amit Nivedan Kalra. All rights reserved.
//

import Foundation
import UIKit

class thisIsForDevice: UIDevice {
    
    struct deviceInformation {
    
     static func currentDevice() -> UIDevice {
        
        UIDevice.currentDevice().systemName
        
        return UIDevice.currentDevice()
        
        }
        
    }
    
}

