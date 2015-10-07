//
//  PYFruitIterator.h
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYFruit.h"
#import "PYBasket.h"
@class PYBasket;
@interface PYFruitIterator : NSObject
@property PYFruit *currentFruit;
@property int currentIndex;
@property PYFruit *nextFruit;
@property PYBasket *basket;
-(BOOL) hasNext;
-(PYFruit*) next;
-(id)initWithBasket: (PYBasket*) aBasket;
@end
