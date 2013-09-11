//
//  Tennis_kataTests.m
//  Tennis-kataTests
//
//  Created by Erik Thue on 9/11/13.
//  Copyright (c) 2013 Erik Thue. All rights reserved.
//

#import "Tennis_kataTests.h"
#import "Game.h"

@implementation Tennis_kataTests

Game *game;

- (void)setUp
{
    [super setUp];
    
    game = [[Game alloc]init];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testScore
{
    [game ResetGame];
    [game Player1Scores];
    [game Player2Scores];
    STAssertEqualObjects([game description],@"15-all",@"Score was wrong");
}

-(void)testMatchScore
{
    [game ResetGame];
    for(int i = 0; i < 5;i++)
        [game Player1Scores];
    STAssertEquals(game.player1.MatchScore,1, @"Score was equal");
    STAssertEquals(game.player2.MatchScore,0, @"Score was equal");
}

-(void)testDeuce
{
    [game ResetGame];
    for(int i = 0; i < 3;i++)
    {
        [game Player1Scores];
        [game Player2Scores];
    }
    STAssertEqualObjects([game description],@"deuce",@"Score was wrong");
}

@end
