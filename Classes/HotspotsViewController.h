//
//  HotspotsViewController.h
//  WiPhone
//
//  Created by Steve England on 08/05/2009.
//  Copyright 2009 Beef. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCLController.h"

@class Hotspot;


@interface HotspotsViewController : UITableViewController <MyCLControllerDelegate> {

	NSMutableArray *hotspots;
	
}

@property(nonatomic , retain) NSArray *hotspots;


@end
