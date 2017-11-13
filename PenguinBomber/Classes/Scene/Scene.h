//
//  Scene.h
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Retronator.PenguinBomber.classes.h"

@interface Scene : NSObject <NSFastEnumeration> {
    NSMutableArray *items;
}

- (void) addItem:(id)item;

@end
