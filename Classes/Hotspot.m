//
//  Hotspot.m
//  WiPhone
//
//  Created by Steve England on 08/05/2009.
//  Copyright 2009 Beef. All rights reserved.
//

#import "Hotspot.h"
#import "ObjectiveResource.h"
#import "Connection.h"
#import "Response.h"
#import "CoreSupport.h"

@implementation Hotspot

@synthesize name, street, street2, postcode, city, operatorName, hotspotTypeName, updatedAt, createdAt;

+ (NSArray *) findByLocation:(NSString *)location WithResponse:(NSError **)aError {
	NSString *myLocation = [NSString stringWithFormat:@"%@?location=%@&within=%d",[self getRemoteCollectionPath], location, 1];
	NSLog (@"FAIL %@", myLocation);
	Response *res = [Connection get:myLocation];
	if([res isError] && aError) {
		*aError = res.error;
	}
	return [self performSelector:[self getRemoteParseDataMethod] withObject:res.body];
}

+ (NSArray *)findByLocation:(NSString *)location {
	NSError *aError;
	return [self findByLocation:location WithResponse:&aError];
}


- (void) dealloc
{
	[createdAt release];
	[updatedAt release];
	[name release];
	[street release];
	[street2 release];
	[postcode release];
	[city release];
	[operatorName release];
	[hotspotTypeName release];
	[super dealloc];
}

@end
