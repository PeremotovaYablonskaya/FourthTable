//
//  PYKiwi.h
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYFruit.h"
@interface PYKiwi : PYFruit
@property BOOL isSweet;
-(id)initWithWeight:(int)aWeight AndSweet: (BOOL)sweet;
-(NSString*)receiveInfo;
-(NSString*)toString;
@end
