//
//  Hotspot.h
//  WiPhone
//
//  Created by Steve England on 08/05/2009.
//  Copyright 2009 Beef. All rights reserved.
//

#import "ObjectiveResource.h"


@interface Hotspot : NSObject {
  NSString * name;
  NSString * street;
  NSString * street2;
  NSString * postcode;
  NSString * city;
  NSString * operatorName;
  NSString * hotspotTypeName;
  NSDate   * updatedAt;
  NSDate   * createdAt;
}


@property (nonatomic , retain) NSDate * createdAt;
@property (nonatomic , retain) NSDate * updatedAt;
@property (nonatomic , retain) NSString * name;
@property (nonatomic , retain) NSString * street;
@property (nonatomic , retain) NSString * street2;
@property (nonatomic , retain) NSString * postcode;
@property (nonatomic , retain) NSString * city;
@property (nonatomic , retain) NSString * operatorName;
@property (nonatomic , retain) NSString * hotspotTypeName;

+(NSArray *) findByLocation:(NSString *)location;
+(NSArray *) findByLocation:(NSString *)location WithResponse:( NSError **)aError;

@end
