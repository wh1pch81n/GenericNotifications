//
//  GenericNotification_extension.swift
//  GenericNotifications
//
//  Created by Ho, Derrick on 10/1/17.
//  Copyright © 2017 WebMD. All rights reserved.
//

import Foundation

extension GenericNotification where KEYTYPE == NSString, VALUETYPE == NSString, RETURNTYPE == NSNull {
    
    final public func addSubscriber(_ subscriber: NSObject, callback: @escaping (_ info: [String: String]?) -> ())
    {
        self.addSubscriber(subscriber) { (_ _info) -> NSNull? in
            callback((_info ?? [:]) as [String: String])
            return nil
        }
    }
    
}
