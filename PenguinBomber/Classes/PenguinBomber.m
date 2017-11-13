//
//  PenguinBomber.m
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import "PenguinBomber.h"

@implementation PenguinBomber

- (id) init {
    if (self = [super init]) {
        graphics = [[GraphicsDeviceManager alloc] initWithGame:self];
    }
    return self;
}

- (void) initialize {
    // Create all levels.
    levels = [[NSMutableArray alloc] init];
    [levels addObject:[[[PenguinLevel alloc] init] autorelease]];
    
    // Start in first level.
    [self loadLevel:[levels objectAtIndex:0]];
    
    // Initialize all components.
    [super initialize];
}

- (void) loadLevel:(Level *)level {
    
    // Remove the current renderer if it exists.
    if (renderer) {
        [self.components removeComponent:renderer];
        [renderer release];
    }
    
    // Create a new renderer for the new scene.
    renderer = [[GameRenderer alloc] initWithGame:self level:level];
    [self.components addComponent:renderer];
}

- (void) dealloc
{
    [levels release];
    [graphics release];
    [super dealloc];
}

@end


