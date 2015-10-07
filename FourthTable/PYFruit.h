//
//  PYFruit.h
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PYFruit : NSObject
@property int weight;
-(id)initWithWeight: (int) aWeight;
-(NSString*)toString;
-(NSString*)receiveInfo;
@end
