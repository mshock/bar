//
//  BarController.h
//  bar
//
//  Created by mshock on 7/24/14.
//  Copyright (c) 2014 mshock. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class ClockTimer;

@interface BarController : NSWindowController
@property (weak) IBOutlet NSTextField *textField;
@property (strong) IBOutlet NSWindow *barWindow;
@property (weak) IBOutlet NSView *barView;
@property ClockTimer *clockTimer;

- (void) timerWriteText:(NSTimer*)theTimer;

- (void) writeText:(NSString *)message;

@end
