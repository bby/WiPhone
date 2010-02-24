//
//  MainViewController.h
//  WiPhone
//
//  Created by Steve England on 23/04/2009.
//  Copyright 2009 Beef. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MainViewController : UINavigationController {
	UINavigationController *navigationController;
}

@property (nonatomic, retain) UINavigationController *navigationController;

@end
