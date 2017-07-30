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
        _currentSquare = 0;
    }
    return self;
}

- (void)roll
{
    NSInteger diceRoll = arc4random_uniform(6)+1;
    NSLog(@"Rolled a %li", diceRoll);
    
    if (self.currentSquare < 100)
    {
        self.currentSquare += diceRoll;
        NSLog(@"Your current position is: %li", (long)self.currentSquare);
    }
}

@end
