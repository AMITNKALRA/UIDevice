//
//  InterfaceController.swift
//  watchDevice Extension
//
//  Created by Amit Nivedan Kalra on 8/29/15.
//  Copyright © 2015 Amit Nivedan Kalra. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var systemNameLabel: WKInterfaceLabel!
    
    @IBOutlet var systemVersionLabel: WKInterfaceLabel!
    
    @IBOutlet var batteryLabel: WKInterfaceLabel!
    
    
    
    class func currentDevice() -> WKInterfaceDevice {
        
        return WKInterfaceDevice.currentDevice()
        
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        systemVersionLabel.setText("\(WKInterfaceDevice.currentDevice().systemVersion)")
        
        systemNameLabel.setText("\(WKInterfaceDevice.currentDevice().systemName)")
        
        batteryLabel.setText("\(WKInterfaceDevice.currentDevice())")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
