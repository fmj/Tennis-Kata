//
//  AppDelegate.h
//  Tennis-kata
//
//  Created by Erik Thue on 9/11/13.
//  Copyright (c) 2013 Erik Thue. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Game.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSTextField *Player1SetScore;
@property (weak) IBOutlet NSTextField *Player1MatchScore;
@property (weak) IBOutlet NSTextField *Player2SetScore;
@property (weak) IBOutlet NSTextField *Player2MatchScore;
@property (weak) IBOutlet NSTextField *Status;
@property Game *game;
- (IBAction)Player1Score:(id)sender;
- (IBAction)Player2Score:(id)sender;
@property (weak) IBOutlet NSTextField *BestOfTextField;

-(void)UpdateGUI;
@end
