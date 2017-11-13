//
//  GameRenderer.m
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//



#import "GameRenderer.h"

#import "Retronator.PenguinBomber.h"

@implementation GameRenderer

- (id) initWithGame:(Game *)theGame level:(Level *)theLevel {
    if (self = [super initWithGame:theGame]) {
        level = theLevel;
    }
    return self;
}

- (void) initialize {
    
    [super initialize];
}

- (void) loadContent {
    spriteBatch = [[SpriteBatch alloc] initWithGraphicsDevice:self.graphicsDevice];
    
    //penguin = [[Sprite alloc] init];
    //penguin.texture = [self.game.content load:@"penguin"];
    //penguin.sourceRectangle = [Rectangle rectangleWithX:0 y:0 width:200 height:200];
    //penguin.origin = [Vector2 vectorWithX:50 y:50];
    
    bomb = [[Sprite alloc] init];
    bomb.texture = [self.game.content load:@"bomb"];
    bomb.sourceRectangle = [Rectangle rectangleWithX:0 y:0 width:50 height:50];
    bomb.origin = [Vector2 vectorWithX:0 y:0];
}

- (void) drawWithGameTime:(GameTime *)gameTime {
    [self.graphicsDevice clearWithColor:[Color white]];
    
    [spriteBatch begin];
    
    for (id<NSObject> item in level.scene) {
        
        id<Position> itemWithPosition;
        if ([item conformsToProtocol:@protocol(Position)]) {
            itemWithPosition = (id<Position>)item;
        }
        
        Sprite *sprite;
        if ([item isKindOfClass:[Penguin class]]) {
            sprite = penguin;
        } else if ([item isKindOfClass:[Bomb class]]) {
            sprite = bomb;
        }
        
        if (itemWithPosition && sprite) {
            [spriteBatch draw:sprite.texture
                           to:itemWithPosition.position
                fromRectangle:sprite.sourceRectangle
                tintWithColor:[Color white]
                     rotation:0
                       origin:sprite.origin
                 scaleUniform:2
                      effects:SpriteEffectsNone
                   layerDepth:0];
        }
    }
    
    [spriteBatch end];
}

- (void) dealloc
{
    [spriteBatch release];
    [super dealloc];
}

@end
