//
//  HotspotViewController.h
//  WiPhone
//
//  Created by Steve England on 14/05/2009.
//  Copyright 2009 Beef. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Hotspot;

@interface HotspotViewController : UITableViewController {
	Hotspot * hotspot;
}

@property (nonatomic , retain) Hotspot * hotspot;

@end
