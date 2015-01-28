//
//  Store.m
//  LineLess V2
//
//  Created by Devin DiSabatino on 1/19/15.
//  Copyright (c) 2015 Disabs. All rights reserved.
//

#import "Store.h"

@implementation Store

-(id)initWithName:(NSString *)name_ wait:(int)wait_ confidence:(int)confidence_
{
    self = [super init];
    if (self){
        self.name = name_;
        self.waitTime = wait_;
        self.confidenceInterval = confidence_;
        
    }
    return self;
}

@end
