//
//  PYTwoWayFruitIterator.m
//  SecondFruitBasket
//
//  Created by fpmi on 25.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "PYTwoWayFruitIterator.h"

@implementation PYTwoWayFruitIterator
-(BOOL) hasNext{
    if(self.beginCurrentFruit == nil && self.endCurrentFruit == nil)
        return false;
    else
        return true;
}
-(PYFruit*) next{
    if(!self.isEven && self.beginCurrentIndex <= self.middleEdge)
    {
    if(self.beginCurrentFruit == nil){
        self.beginCurrentIndex=-1;
        return nil;
    }
    else {
        self.beginCurrentFruit = self.beginNextFruit;
        if(self.middleEdge+1<self.beginCurrentIndex+3)
            self.beginNextFruit=nil;
        else
            self.beginNextFruit= [self.basket.fruits objectAtIndex:self.beginCurrentIndex+2];
        self.beginCurrentIndex+=1;
        self.isEven=true;
        return [self.basket.fruits objectAtIndex:self.beginCurrentIndex-1];
        
        
    }
    }
    if(self.isEven && self.endCurrentIndex > self.middleEdge)
    {
        if(self.endCurrentFruit == nil){
            self.endCurrentIndex=-1;
            return nil;
        }
        else {
            self.endCurrentFruit = self.endPrevFruit;
            if(self.endCurrentIndex<=self.middleEdge+2)
                self.endPrevFruit=nil;
            else
                self.endPrevFruit= [self.basket.fruits objectAtIndex:self.endCurrentIndex-2];
            self.endCurrentIndex-=1;
            self.isEven=false;
            return [self.basket.fruits objectAtIndex:self.endCurrentIndex+1];
            
            
        }
    }
    self.isEven=!self.isEven;
    return nil;
}
-(id)initWithBasket: (PYBasket*) aBasket{
    self=[super init];
    if(self)
    {
        _basket = aBasket;
        _isEven = false;
        _middleEdge=[_basket.fruits count]/2-1;
        if([_basket.fruits count] == 0){
            _beginCurrentFruit = nil;
            _endCurrentFruit = nil;
            _beginCurrentIndex=-1;
            _endCurrentIndex=-1;
        }
        else if([_basket.fruits count] == 1){
            _beginCurrentFruit = [_basket.fruits objectAtIndex:0];
            _endCurrentFruit = [_basket.fruits objectAtIndex:0];
            _beginCurrentIndex=0;
            _endCurrentIndex=0;
        }
        else{
            _beginCurrentFruit = [_basket.fruits objectAtIndex:0];
            _endCurrentFruit = [_basket.fruits objectAtIndex: [_basket.fruits count]-1];
            _beginNextFruit = [_basket.fruits objectAtIndex:1];
            _endPrevFruit = [_basket.fruits objectAtIndex:[_basket.fruits count]-2];
            _beginCurrentIndex=0;
            _endCurrentIndex=[_basket.fruits count]-1;
        }
        if([_basket.fruits count]<=2){
            _beginNextFruit = nil;
            _endPrevFruit = nil;
        }
        if([_basket.fruits count]==3){
            _beginNextFruit = nil;
        }
    }
    return self;
}
@end
