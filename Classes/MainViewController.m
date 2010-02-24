//
//  MainViewController.m
//  WiPhone
//
//  Created by Steve England on 23/04/2009.
//  Copyright 2009 Beef. All rights reserved.
//

#import "MainViewController.h"
#import "LocationInputViewController.h"
#import "HotspotsViewController.h"

@implementation MainViewController

@synthesize navigationController;

- (void)viewDidLoad {
	[super viewDidLoad];
	NSLog(@"Main View Did Load: %@", self.tabBarItem.title);
	if(self.tabBarItem.title == @"Hotspots") {
		HotspotsViewController *hotspotsViewController = [[HotspotsViewController alloc] init];
		[self pushViewController:hotspotsViewController animated:YES];
		[hotspotsViewController release];
	} else if (self.tabBarItem.title == @"Location") {	
		LocationInputViewController *locationInputViewController = [[LocationInputViewController alloc] init];
		[self pushViewController:locationInputViewController animated:YES];
		[locationInputViewController release];
	}
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
	[navigationController release];
}


@end
