//
//  GenericNotificationCenter.swift
//  GenericNotifications
//
//  Created by Ho, Derrick on 10/1/17.
//  Copyright © 2017 WebMD. All rights reserved.
//

import Foundation

@objc final public class GenericNotificationCenter: NSObject {}

extension GenericNotificationCenter {
    @objc public static let oneWayNotification: GenericNotification = GenericNotification<NSString, NSString, NSNull>()
}
