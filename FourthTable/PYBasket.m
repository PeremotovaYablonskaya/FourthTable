//
//  PYBasket.m
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "PYBasket.h"

@implementation PYBasket
-(id)init{
    self=[super init];
    if(self)
    {
         _fruits = [[NSMutableArray alloc ] init];
    }
    return self;
}
-(void)putFruit: (PYFruit*) aFruit{
    [self.fruits addObject:aFruit];
}
-(PYFruitIterator*) receiveIterator{
    PYFruitIterator *basketIterator = [[PYFruitIterator alloc] initWithBasket:self];
    return basketIterator;
}
-(PYTwoWayFruitIterator*) receiveCrazyIterator{
    PYTwoWayFruitIterator *basketIterator = [[PYTwoWayFruitIterator alloc] initWithBasket:self];
    return basketIterator;
}
@end
