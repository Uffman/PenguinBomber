//
//  Sprite.h
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Retronator.PenguinBomber.classes.h"
#import "Retronator.Xni.Framework.h"

@interface Sprite : NSObject {
    Texture2D *texture;
    Rectangle *sourceRectangle;
    Vector2 *origin;
}

@property (nonatomic, retain) Texture2D *texture;
@property (nonatomic, retain) Rectangle *sourceRectangle;
@property (nonatomic, retain) Vector2 *origin;

@end
