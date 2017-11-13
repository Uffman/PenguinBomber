//
//  PenguinBomber.h
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Retronator.Xni.Framework.h"
#import "Retronator.Xni.Framework.Graphics.h"
#import "Retronator.Xni.Framework.Content.h"
#import "Retronator.Xni.Framework.Input.Touch.h"

#import "Retronator.PenguinBomber.classes.h"

@interface PenguinBomber : Game {
    // Graphics
    GraphicsDeviceManager *graphics;
    
    // An array of level classes.
    NSMutableArray *levels;
    
    // Current state
    Level *currentLevel;
    GameRenderer *renderer;
}

/**
 Loads and starts a particular level.
 */
- (void) loadLevel:(Class) levelClass;


@end

