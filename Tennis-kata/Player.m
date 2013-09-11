//
//  Player.m
//  Tennis-kata
//
//  Created by Erik Thue on 9/11/13.
//  Copyright (c) 2013 Erik Thue. All rights reserved.
//

#import "Player.h"

@implementation Player
@synthesize Name;
@synthesize Score;
@synthesize MatchScore;
@synthesize HasBall;

-(id)init{
    self = [super init];
    if(self)
    {
        self.Score = [[Score alloc]init];
        self.MatchScore = 0;
        return self;
    }
    return nil;
}
@end
