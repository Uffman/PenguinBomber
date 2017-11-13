//
//  GameRenderer.h
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Retronator.Xni.Framework.Graphics.h"
#import "Retronator.Xni.Framework.Content.h"

#import "Retronator.PenguinBomber.classes.h"

/**
 The game renderer knows how to render a game level.
 */
@interface GameRenderer : DrawableGameComponent {
    
    // Resources
    ContentManager *content;
    Sprite *penguin;
    Sprite *bomb;
    
    // Graphics objects
    // We use sprite batch to draw sprites.
    SpriteBatch *spriteBatch;
    
    // Level
    // This is the level we will be rendering.
    Level *level;
}

- (id) initWithGame:(Game *)theGame level:(Level *)theLevel;

@end
