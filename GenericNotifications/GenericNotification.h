//
//  GenericNotification.h
//  GenericNotifications
//
//  Created by Ho, Derrick on 10/1/17.
//  Copyright © 2017 WebMD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GenericNotification<__covariant KEYTYPE: NSString *, VALUETYPE: id, RETURNTYPE: id> : NSObject

- (NSArray<RETURNTYPE> *_Nonnull)broadcastNotificationWithInfo:(NSDictionary<KEYTYPE, VALUETYPE> *_Nullable)info;

- (void)addSubscriber:(NSObject *_Nonnull)subscriber callback:(RETURNTYPE _Nullable(^_Nonnull)(NSDictionary<KEYTYPE, VALUETYPE> *_Nullable info))callback;

- (void)removeSubscriber:(id _Nonnull)subscriber;

@end
