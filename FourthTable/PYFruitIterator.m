//
//  PYFruitIterator.m
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "PYFruitIterator.h"

@implementation PYFruitIterator
-(BOOL) hasNext{
    if(self.currentFruit == nil)
        return false;
    else
        return true;
}
-(PYFruit*) next{
    if(self.currentFruit == nil){
        self.currentIndex=-1;
        return nil;
    }
    else {

        self.currentFruit = self.nextFruit;
        if([self.basket.fruits count]<self.currentIndex+3)
            self.nextFruit=nil;
        else
            self.nextFruit= [self.basket.fruits objectAtIndex:self.currentIndex+2];
        self.currentIndex+=1;
        return [self.basket.fruits objectAtIndex:self.currentIndex-1];
        
        
    }
}
-(id)initWithBasket: (PYBasket*) aBasket{
    self=[super init];
    if(self)
    {
        _basket = aBasket;
        if([_basket.fruits count] == 0){
            _currentFruit = nil;
            _nextFruit = nil;
            _currentIndex=-1;
        }
        else if([_basket.fruits count] == 1){
            _currentFruit = [_basket.fruits objectAtIndex:0];
            _nextFruit = nil;
            _currentIndex=0;
        }
        else{
            _currentFruit = [_basket.fruits objectAtIndex:0];
            _nextFruit = [_basket.fruits objectAtIndex:1];
            _currentIndex=0;
        }
    }
    return self;
}
@end
