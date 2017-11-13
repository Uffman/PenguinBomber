//
//  Scene.m
//  PenguinBomber
//
//  Created by Marko on 10/11/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import "Scene.h"

@implementation Scene

- (id) init
{
    self = [super init];
    if (self != nil) {
        items = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addItem:(id)item {
    [items addObject:item];
}

- (NSUInteger) countByEnumeratingWithState:(NSFastEnumerationState *)state
                                   objects:(id *)stackbuf
                                     count:(NSUInteger)len {
    return [items countByEnumeratingWithState:state objects:stackbuf count:len];
}

- (void) dealloc
{
    [items release];
    [super dealloc];
}

@end
