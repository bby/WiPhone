//
//  LocationInputViewController.h
//  WiPhone
//
//  Created by Steve England on 23/04/2009.
//  Copyright 2009 Beef. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCLController.h"


@interface LocationInputViewController : UIViewController <MyCLControllerDelegate> {
	IBOutlet UITextView *locationField;
	BOOL isCurrentlyUpdating;
}

@property (nonatomic, retain) UITextView *locationField;


@end
