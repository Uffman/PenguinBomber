//
//  Sprite.m
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import "Sprite.h"

#import "Retronator.PenguinBomber.h"

@implementation Sprite

@synthesize texture;
@synthesize sourceRectangle;
@synthesize origin;

- (void) dealloc
{
    [texture release];
    [sourceRectangle release];
    [origin release];
    [super dealloc];
}

@end
