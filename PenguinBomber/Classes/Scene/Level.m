//
//  Level.m
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import "Level.h"

#import "Retronator.PenguinBomber.h"

@implementation Level

- (id) init
{
    self = [super init];
    if (self != nil) {
        player1Penguin = [[Penguin alloc] init];        
        bomb = [[Bomb alloc] init];
        
        scene = [[Scene alloc] init];
        [scene addItem:player1Penguin];
        [scene addItem:bomb];
    }
    return self;
}

@synthesize scene;

- (void) dealloc
{
    [player1Penguin release];
    [bomb release];
    [scene release];
    [super dealloc];
}



@end
