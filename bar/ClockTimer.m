//
//  ClockTimer.m
//  bar
//
//  Created by mshock on 7/24/14.
//  Copyright (c) 2014 mshock. All rights reserved.
//

#import "ClockTimer.h"

@implementation ClockTimer


- (void) testMethod {
    NSLog(@"testmethod");
}


- (void)startRepeatingTimer {
    
    // Cancel a preexisting timer.
    [self.repeatingTimer invalidate];
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                      target:self.barObject selector:self.updateTextSelector
                                                    userInfo: nil repeats:YES];

    NSLog(@"test");
    self.repeatingTimer = timer;
}

@end
