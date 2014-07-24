//
//  AppDelegate.m
//  bar
//
//  Created by mshock on 7/23/14.
//  Copyright (c) 2014 mshock. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize statusBar;

- (void) awakeFromNib {
    self.statusBar = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    
    self.statusBar.title = @"Bar";
    // TODO: set icon
    //self.statusBar.image =
    
    self.statusBar.menu = self.statusMenu;
    self.statusBar.highlightMode = YES;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // format window into bar
    
    // the proper level under main mac menu
    self.window.level = NSMainMenuWindowLevel;
    // remove window header
    [self.window setStyleMask:NSBorderlessWindowMask];
    // set bgcolor
    NSColor *menuColor = [NSColor colorWithCalibratedRed:85 green:85 blue:85 alpha: 0];
    self.window.backgroundColor = menuColor;
    // retrieve screen size, set bar size
    NSRect screenDims = [[NSScreen mainScreen] frame];
    //NSLog(@"%f x %f", screenDims.size.height, screenDims.size.width);
    NSRect windowFrame = CGRectMake(0.0, screenDims.size.height-25, screenDims.size.width, 25);
    [self.window setFrame:windowFrame display:YES];
    
}

@end
