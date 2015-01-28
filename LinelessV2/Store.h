//
//  Store.h
//  LineLess V2
//
//  Created by Devin DiSabatino on 1/19/15.
//  Copyright (c) 2015 Disabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Store : NSObject

@property (strong, nonatomic) NSString *name;
@property int waitTime;
@property int confidenceInterval;

-(id)initWithName:(NSString *)name_ wait:(int)wait_ confidence:(int)confidence_;

@end
