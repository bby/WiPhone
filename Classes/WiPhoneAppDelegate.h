//
//  WiPhoneAppDelegate.h
//  WiPhone
//
//  Created by Steve England on 23/04/2009.
//  Copyright Beef 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WiPhoneAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UITabBarController *tabBarController;

@end
