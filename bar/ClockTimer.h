//
//  ClockTimer.h
//  bar
//
//  Created by mshock on 7/24/14.
//  Copyright (c) 2014 mshock. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClockTimer : NSObject

@property (weak) NSTimer *repeatingTimer;
@property NSObject* barObject;
@property (nonatomic) SEL updateTextSelector;
- (IBAction)startRepeatingTimer:sender;

@end
