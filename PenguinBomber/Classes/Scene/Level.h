//
//  Level.h
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import "Game.h"
#import <Foundation/Foundation.h>
#import "Retronator.PenguinBomber.classes.h"

@interface Level : NSObject {
    Scene *scene;
    
    Penguin *player1Penguin;
    Bomb *bomb;
}

@property (nonatomic, retain) Scene *scene;

@end
