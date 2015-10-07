//
//  PYFruit.m
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "PYFruit.h"

@implementation PYFruit
-(id)initWithWeight: (int) aWeight{
    self=[super init];
    if(self){
        _weight=aWeight;
    }
    return self;
}
-(NSString*)toString{
    return [[NSString alloc] initWithFormat: @"Kiwi"];
}
@end
