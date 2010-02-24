//
//  LocationInputViewController.m
//  WiPhone
//
//  Created by Steve England on 23/04/2009.
//  Copyright 2009 Beef. All rights reserved.
//

#import "LocationInputViewController.h"


@implementation LocationInputViewController

@synthesize locationField;
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		isCurrentlyUpdating = NO;
	}
	return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

// Appends some text to the main text view
// If this is the first update, it will replace the existing text
-(void)addTextToLog:(NSString *)text {
	locationField.text = text;
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	self.title = @"Location";
	[MyCLController sharedInstance].delegate = self;
	[[MyCLController sharedInstance].locationManager startUpdatingLocation];
	
    // Check to see if the user has disabled location services all together
    // In that case, we just print a message and disable the "Start" button
    if ( ! [MyCLController sharedInstance].locationManager.locationServicesEnabled ) {
        [self addTextToLog:NSLocalizedString(@"NoLocationServices", @"User disabled location services")];
    }
}

-(void)newLocationUpdate:(NSString *)text {
	[self addTextToLog:text];
}

-(void)newLatLngUpdate:(NSString *)latlng {
	//[self addTextToLog:text];
}

-(void)newError:(NSString *)text {
	[self addTextToLog:text];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[locationField release];
    
	[super dealloc];
}


@end
