//
//  PYBasket.h
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYFruit.h"
#import "PYFruitIterator.h"
#import "PYTwoWayFruitIterator.h"
@class PYFruitIterator;
@class PYTwoWayFruitIterator;
@interface PYBasket : NSObject
@property NSMutableArray *fruits;
-(id)init;
-(void)putFruit: (PYFruit*) aFruit;
-(PYFruitIterator*) receiveIterator;
-(PYTwoWayFruitIterator*) receiveCrazyIterator;
 @end
