//
//  GenericNotification.m
//  GenericNotifications
//
//  Created by Ho, Derrick on 10/1/17.
//  Copyright © 2017 WebMD. All rights reserved.
//

#import "GenericNotification.h"
#import "WeakHolder.h"

@implementation GenericNotification {
    @private NSArray<WeakHolder *> *subscribers;
}
- (NSArray *_Nonnull)broadcastNotificationWithInfo:(NSDictionary *_Nullable)info {
    if (info == nil) { info = @{}; }
    [self flushDeallocatedSubscribers];
    NSMutableArray *returnValues = [NSMutableArray new];
    for (WeakHolder *w in subscribers) {
        id returnValue = w->callback(info);
        if (returnValue) {
            [returnValues addObject:returnValue];
        }
    }
    return returnValues;
}


- (void)addSubscriber:(NSObject *)subscriber callback:(id _Nullable(^_Nonnull)(NSDictionary<NSString *, id> *_Nullable))callback {
    [self flushDeallocatedSubscribers];
    WeakHolder *w = [WeakHolder new];
    w->subscriber = subscriber;
    w->callback = callback;
    subscribers = [subscribers arrayByAddingObject:w];
}

- (void)removeSubscriber:(id)subscriber {
    [self flushDeallocatedSubscribers];
    NSMutableArray *newArray = [NSMutableArray new];
    for (WeakHolder *w in subscribers) {
        if (w->subscriber != subscriber) {
            [newArray addObject:w];
        }
    }
    subscribers = newArray;
}

- (void)flushDeallocatedSubscribers {
    NSMutableArray *newArray = [NSMutableArray new];
    for (WeakHolder *w in subscribers) {
        if (w->subscriber) {
            [newArray addObject:w];
        }
    }
    subscribers = newArray;
}

@end
