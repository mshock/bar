//
//  BarController.m
//  bar
//
//  Created by mshock on 7/24/14.
//  Copyright (c) 2014 mshock. All rights reserved.
//

#import "BarController.h"

@interface BarController ()

@end

@implementation BarController

- (void) writeText:(NSString *)message {
    
}

- (id)init
{
    self = [super initWithWindowNibName:@"Bar"];
    if (self) {
//        [self loadWindow];
        [self barWindow];
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    // format window into bar
    
    // the proper level under main mac menu
    self.barWindow.level = NSMainMenuWindowLevel;
    // remove window header
    [self.barWindow setStyleMask:NSBorderlessWindowMask];
    // set bgcolor
    NSColor *barColor = [NSColor colorWithCalibratedRed:85 green:85 blue:85 alpha: 0];
    self.window.backgroundColor = barColor;
    // retrieve screen size, set bar size
    NSRect screenDims = [[NSScreen mainScreen] frame];
    //NSLog(@"%f x %f", screenDims.size.height, screenDims.size.width);
    NSRect barFrame = CGRectMake(0.0, screenDims.size.height-25, screenDims.size.width, 25);
    [self.barWindow setFrame:barFrame display:YES];
    
}

@end
