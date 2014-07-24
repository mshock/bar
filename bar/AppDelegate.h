//
//  AppDelegate.h
//  bar
//
//  Created by mshock on 7/23/14.
//  Copyright (c) 2014 mshock. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property IBOutlet NSMenu *statusMenu;
@property (nonatomic, strong) NSStatusItem *statusBar;
@property (assign) IBOutlet NSWindow *window;


@end
