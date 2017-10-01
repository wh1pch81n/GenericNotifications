//
//  WeakHolder.h
//  GenericNotifications
//
//  Created by Ho, Derrick on 10/1/17.
//  Copyright © 2017 WebMD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeakHolder<__covariant KEYTYPE: NSString *, VALUETYPE: id, RETURNTYPE: id> : NSObject
{
    @public __weak id subscriber;
    @public RETURNTYPE(^callback)(NSDictionary<KEYTYPE, VALUETYPE> *info);
}
@end
