//
//  Game.h
//  Tennis-kata
//
//  Created by Erik Thue on 9/11/13.
//  Copyright (c) 2013 Erik Thue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Game : NSObject

@property Player *player1;
@property Player *player2;


-(id)init;

-(void)Player1Scores;
-(void)Player2Scores;

-(Player *)PlayerWon:(int) BestOf;

-(void)ResetGame;

-(NSString *)description;

@end
