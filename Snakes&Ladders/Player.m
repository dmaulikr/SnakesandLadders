//
//  Player.m
//  Snakes&Ladders
//
//  Created by Elle Ti on 2017-07-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    if (self = [super init])
    {
        _dice = arc4random_uniform(6)+1;
    }
    return self;
}

- (void)roll
{
    NSLog(@"Rolled a %li", (long)self.dice);
}

@end
