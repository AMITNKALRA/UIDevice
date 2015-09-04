//
//  ViewController.swift
//  Device
//
//  Created by Amit Nivedan Kalra on 8/28/15.
//  Copyright © 2015 Amit Nivedan Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var systemNameLabel: UILabel!
    
    @IBOutlet weak var systemVersionLabel: UILabel!
    
    @IBOutlet weak var batteryLevelLabel: UILabel!
    
    @IBOutlet weak var batteryMontiterLabel: UILabel!
    
    @IBOutlet weak var batteryState: UILabel!
    
    class func currentDevice() -> UIDevice {
        
        return UIDevice.currentDevice()
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        systemNameLabel.text = "\(UIDevice.currentDevice().systemName)"
        
        systemVersionLabel.text = "iOS \(UIDevice.currentDevice().systemVersion)"
        
        batteryLevelLabel.text = "\(UIDevice.currentDevice().batteryLevel)"
        
        batteryMontiterLabel.text = "\(UIDevice.currentDevice().batteryMonitoringEnabled)"
        
        batteryState.text = "\(UIDevice.currentDevice().batteryState)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}