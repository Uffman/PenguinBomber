//
//  Fader.h
//  Artificial I
//
//  Created by Matej Jan on 4.12.10.
//  Copyright 2010 Retronator. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Fader : NSObject {
    BOOL finished;
    float value;
    float min;
    float max;
    NSTimeInterval duration;
    
    float rate;
    float remaining;
    float target;
}

- (id) initWithMin:(float)minValue max:(float)maxValue duration:(NSTimeInterval)theDuration;

@property (nonatomic, readonly) BOOL finished;
@property (nonatomic) float value;
@property (nonatomic) float min;
@property (nonatomic) float max;
@property (nonatomic) NSTimeInterval duration;

- (void) fadeIn;
- (void) fadeOut;

- (void) updateWithElapsed:(NSTimeInterval)elapsed;

@end
