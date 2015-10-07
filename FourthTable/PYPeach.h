//
//  PYPeach.h
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYFruit.h"
@interface PYPeach : PYFruit
@property (copy) NSString *countryOfOrigin;
-(id)initWithWeight:(int)aWeight AndCountry: (NSString*)country;
-(NSString*)receiveInfo;
-(NSString*)toString;
@end
