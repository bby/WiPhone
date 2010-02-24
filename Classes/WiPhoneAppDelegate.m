//
//  WiPhoneAppDelegate.m
//  WiPhone
//
//  Created by Steve England on 23/04/2009.
//  Copyright Beef 2009. All rights reserved.
//

#import "WiPhoneAppDelegate.h"
#import "ObjectiveResource.h"
#import "MainViewController.h"

@implementation WiPhoneAppDelegate

@synthesize window;
@synthesize tabBarController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
  	
	tabBarController = [[UITabBarController alloc] initWithNibName:nil bundle:nil];
	
	// Create instances of the MainViewController for the 2 TabBar buttons
	MainViewController *viewController1 = [[[MainViewController alloc] initWithNibName:nil bundle:nil] autorelease];
	viewController1.tabBarItem.title = @"Hotspots";
	MainViewController *viewController2 = [[[MainViewController alloc] initWithNibName:nil bundle:nil] autorelease];
	viewController2.tabBarItem.title = @"Location";
	tabBarController.viewControllers = [NSArray arrayWithObjects:viewController1, viewController2, nil];
		
    
	//Configure ObjectiveResource
    [ObjectiveResourceConfig setSite:@"http://wimap.arebeef.co.uk/"];

    // dogs is password protected
    // [ObjectiveResourceConfig setUser:@"Hiro"];
    // [ObjectiveResourceConfig setPassword:@"Protagonist"];
    
    // use json
    [ObjectiveResourceConfig setResponseType:JSONResponse];
    
    // Add the tab bar controller's current view as a subview of the window
    [window addSubview:tabBarController.view];
	
	// Override point for customization after application launch  
    [window makeKeyAndVisible]; 
}


/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
}
*/

/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
}
*/


- (void)dealloc {
    [tabBarController release];
    [window release];
    [super dealloc];
}

@end

