//
//  BarController.h
//  bar
//
//  Created by mshock on 7/24/14.
//  Copyright (c) 2014 mshock. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface BarController : NSWindowController
@property (strong) IBOutlet NSWindow *barWindow;
@property (weak) IBOutlet NSView *barView;

- (void) writeText:(NSString *)message;

@end
