//
//  Bomb.m
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import "Bomb.h"

@implementation Bomb

- (id) init
{
    self = [super init];
    if (self != nil) {
        position = [[Vector2 alloc] init];
    }
    return self;
}

@synthesize position;

- (void) dealloc
{
    [position release];
    [super dealloc];
}

@end
