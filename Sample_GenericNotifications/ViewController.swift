//
//  ViewController.swift
//  Sample_GenericNotifications
//
//  Created by Ho, Derrick on 10/1/17.
//  Copyright © 2017 WebMD. All rights reserved.
//

import Foundation
import GenericNotifications

extension ViewController {
    
    @objc func subscribeInSwift() {
        GenericNotificationCenter.oneWayNotification.addSubscriber(self) { (info: [String: String]?) in
            print("swift recieved one way notification")
        }
    }
    
}
