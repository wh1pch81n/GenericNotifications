//
//  ViewController.m
//  Sample_GenericNotifications
//
//  Created by Ho, Derrick on 10/1/17.
//  Copyright © 2017 WebMD. All rights reserved.
//

#import "ViewController.h"
#import <GenericNotifications/GenericNotifications.h>
#import "Sample_GenericNotifications-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[GenericNotificationCenter oneWayNotification] addSubscriber:self
                                                         callback:^NSNull * _Nullable(NSDictionary<NSString *,NSString *> * _Nullable info) {
                                                             NSLog(@"Recieved one way notification");
                                                             return nil;
                                                         }];
    [self subscribeInSwift];
}


- (IBAction)tappedButton:(id)sender {
    [[GenericNotificationCenter oneWayNotification] broadcastNotificationWithInfo:nil];
}


@end
