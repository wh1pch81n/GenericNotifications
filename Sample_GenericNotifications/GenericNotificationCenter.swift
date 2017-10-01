//
//  GenericNotificationCenter.swift
//  Sample_GenericNotifications
//
//  Created by Ho, Derrick on 10/1/17.
//  Copyright © 2017 WebMD. All rights reserved.
//

import Foundation
import GenericNotifications

extension GenericNotificationCenter {
    @objc static let buttonTapped: GenericNotification = GenericNotification<NSString, NSNull, NSNull>()
}
