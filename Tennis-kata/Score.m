//
//  Score.m
//  Tennis-kata
//
//  Created by Erik Thue on 9/11/13.
//  Copyright (c) 2013 Erik Thue. All rights reserved.
//

#import "Score.h"

@implementation Score
@synthesize score;

-(id)init
{
    self = [super init];
    if(self)
    {
        score = 0;
        return self;
    }
    return nil;
}

-(NSString *)description
{
    switch (score) {
        case 0:
            return @"love";
            break;
        case 1:
            return @"15";
            break;
        case 2:
            return @"30";
            break;
        case 3:
            return @"40";
            break;
        case 4:
            return @"60-game";
        default:
            return @"Invalid";
            break;
    }
}
@end
