//
//  Player.h
//  Tennis-kata
//
//  Created by Erik Thue on 9/11/13.
//  Copyright (c) 2013 Erik Thue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Score.h"

@interface Player : NSObject

@property NSString *Name;
@property Score *Score;
@property int MatchScore;
@property BOOL *HasBall;

-(id)init;
@end
