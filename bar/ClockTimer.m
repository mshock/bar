//
//  ClockTimer.m
//  bar
//
//  Created by mshock on 7/24/14.
//  Copyright (c) 2014 mshock. All rights reserved.
//

#import "ClockTimer.h"

@implementation ClockTimer

- (IBAction)startRepeatingTimer:sender {
    
    // Cancel a preexisting timer.
    [self.repeatingTimer invalidate];
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.5
                                                      target:self.barObject selector:@selector(updateTextSelector)
                                                    userInfo: @"timer message" repeats:YES];
    
    self.repeatingTimer = timer;
}

@end
