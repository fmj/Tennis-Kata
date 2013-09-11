//
//  Game.m
//  Tennis-kata
//
//  Created by Erik Thue on 9/11/13.
//  Copyright (c) 2013 Erik Thue. All rights reserved.
//

#import "Game.h"

@implementation Game

@synthesize player1;
@synthesize player2;

-(id)init{
    self = [super init];
    if(self)
    {
        player1 = [[Player alloc]init];
        player2 = [[Player alloc]init];
        return self;
    }
    return nil;
}

-(NSString *)description
{
    if(player1.Score.score == player2.Score.score && player1.Score.score == 3)
    {
        return @"deuce";
    }
    else if(player1.Score.score == player2.Score.score)
    {
        return [NSString stringWithFormat:@"%@-all",player1.Score];
    }
    else
    {
        return [NSString stringWithFormat:@"%@-%@",player1.Score,player2.Score];
    }
    return @"Tennis sux!!";
}

-(void)ResetGame
{
    [self init];
}

-(Player *)PlayerWon:(int)BestOf
{
    int winnerCond = round(BestOf/2)+1;
    if(player1.MatchScore >= winnerCond)
    {
        if(player2.MatchScore <= player1.MatchScore-2)
        {
            return player1;
        }
    }
    if(player2.MatchScore >= winnerCond)
    {
        if(player1.MatchScore <= player2.MatchScore-2)
        {
            return player2;
        }
    }
    return nil;
}

-(void)Player1Scores
{
    player1.Score.score++;
    if(player1.Score.score == 4)
    {
        player1.MatchScore++;
        player1.Score.score = 0;
    }
}

-(void)Player2Scores
{
    player2.Score.score++;
    if(player2.Score.score == 4)
    {
        player2.Score.score = 0;
        player2.MatchScore++;
    }
}
@end
