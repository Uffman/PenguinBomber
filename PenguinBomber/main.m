//
//  main.m
//  MyGame
//
//  Created by Marko on 29/10/2017.
//  Copyright © 2017 Marko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Retronator.Xni.Framework.h"

int main(int argc, char * argv[]) {
 
    [GameHost load];
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, @"GameHost", @"PenguinBomber");
    [pool release];
    return retVal;
}
