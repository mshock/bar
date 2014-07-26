//
//  AppDelegate.m
//  bar
//
//  Created by mshock on 7/23/14.
//  Copyright (c) 2014 mshock. All rights reserved.
//

#import "AppDelegate.h"
#import "BarController.h"

@implementation AppDelegate



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
    self.barController = [[BarController alloc] init];
    [self.barController showWindow: nil];
    [self.barController writeText:@"testing!"];
     
}

@end
