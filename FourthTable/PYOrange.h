//
//  PYOrange.h
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYFruit.h"
@interface PYOrange : PYFruit
@property int numberOfSeeds;
-(id)initWithWeight:(int)aWeight AndSeeds: (int)seeds;
-(NSString*)receiveInfo;
-(NSString*)toString;
@end
