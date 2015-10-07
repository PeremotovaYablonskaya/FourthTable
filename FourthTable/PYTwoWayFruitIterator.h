//
//  PYTwoWayFruitIterator.h
//  SecondFruitBasket
//
//  Created by fpmi on 25.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYFruit.h"
#import "PYBasket.h"
@class PYBasket;
@interface PYTwoWayFruitIterator : NSObject
@property PYFruit *beginCurrentFruit;
@property PYFruit *beginNextFruit;
@property PYFruit *endCurrentFruit;
@property PYFruit *endPrevFruit;
@property int beginCurrentIndex;
@property int endCurrentIndex;
@property int middleEdge;
@property BOOL isEven;
@property PYBasket *basket;
-(BOOL) hasNext;
-(PYFruit*) next;
-(id)initWithBasket: (PYBasket*) aBasket;
@end



