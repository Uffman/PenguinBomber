//
//  PenguinLevel.m
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import "PenguinLevel.h"

#import "Retronator.PenguinBomber.h"

@implementation PenguinLevel

- (id) init
{
    self = [super init];
    if (self != nil) {
        player1Penguin.position.x = 320;
        player1Penguin.position.y = 200;
        
        bomb.position.x = 320;
        bomb.position.y = 460;
    }
    return self;
}


@end
