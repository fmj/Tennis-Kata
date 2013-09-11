//
//  AppDelegate.m
//  Tennis-kata
//
//  Created by Erik Thue on 9/11/13.
//  Copyright (c) 2013 Erik Thue. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize Player1MatchScore;
@synthesize Player1SetScore;
@synthesize Player2MatchScore;
@synthesize Player2SetScore;
@synthesize Status;
@synthesize game;
NSSpeechSynthesizer *synth;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    synth = [[NSSpeechSynthesizer alloc] initWithVoice:@"com.apple.speech.synthesis.voice.Princess"];
    
    // Insert code here to initialize your application
    [Status setStringValue:@"test"];
    game = [[Game alloc] init];
    [self Speak:@"Game started"];
    [self UpdateGUI];
    [self Notify:@"Another crappy game started"];
}

- (IBAction)Player1Score:(id)sender {
    [game Player1Scores];
    [self UpdateGUI];
}

- (IBAction)Player2Score:(id)sender {
    [game Player2Scores];
    [self UpdateGUI];
}

-(void)Speak:(NSString *)string
{
    [synth startSpeakingString:string];
}

-(void)Notify:(NSString *)string
{
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = @"Tennis sux!!";
    notification.informativeText = string;
    notification.soundName = NSUserNotificationDefaultSoundName;
    
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];
}
- (IBAction)Serve:(id)sender {
    [game Serve];
    [self UpdateGUI];
}

-(void)UpdateGUI
{
    NSString *notifc = [NSString stringWithFormat:@"%@",game];
    [self Notify:notifc];
    [self Speak:notifc];
    [Status setStringValue:notifc];
    [Player1SetScore setStringValue:[game.player1.Score description]];
    [Player2SetScore setStringValue:[game.player2.Score description]];
    [Player1MatchScore setIntegerValue:game.player1.MatchScore];
    [Player2MatchScore setIntegerValue:game.player2.MatchScore];
    
    Player *wonPlayer = [game PlayerWon:[_BestOfTextField intValue]];
    if(wonPlayer)
    {
        if(wonPlayer == game.player1)
        {
            [Status setStringValue:@"Player 1 won"];
            [self Speak:@"Player 1 won"];
        }
        else{
            [Status setStringValue:@"Player 2 won"];
            [self Speak:@"Player 2 won"];
        }
        [game ResetGame];
    }
}
@end
