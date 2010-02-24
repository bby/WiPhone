//
//  HotspotViewController.m
//  WiPhone
//
//  Created by Steve England on 14/05/2009.
//  Copyright 2009 Beef. All rights reserved.
//

#import "HotspotViewController.h"
#import "Hotspot.h"

@implementation HotspotViewController

@synthesize hotspot;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.title = hotspot.name;
	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 6;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)aTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Hotspot";
    
    UITableViewCell *cell = [aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
	
    NSDateFormatter *dateFormatter = [[[NSDateFormatter alloc] init]  autorelease];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
	
    switch (indexPath.section) {
		case 0:
			cell.text = hotspot.name;
			break;
		case 1:
			cell.text = hotspot.street;
			break;
		case 2:
			cell.text = hotspot.street2;
			break;
		case 3:
			cell.text = hotspot.city;
			break;        
		case 4:
			cell.text = hotspot.postcode;
			break;        
		case 5:
			cell.text = hotspot.operatorName;
			break;        
		case 6:
			cell.text = hotspot.hotspotTypeName;
			break;        
		default:
			break;
    }
    // Configure the cell
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	
	// The header for the section is the region name -- get this from the dictionary at the section index
	
	switch (section) {
		case 0:
			return @"Name";
			break;
		case 1:
			return @"Street";
			break;
		case 3:
			return @"City";
			break;        
		case 4:
			return @"Postcode";
			break;        
		case 5:
			return @"Operator Name";
			break;        
		case 6:
			return @"Type";
			break;        
		default:
			return @"";
			break;
	}
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}


@end
