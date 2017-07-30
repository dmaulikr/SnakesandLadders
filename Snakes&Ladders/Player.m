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
        _dice = 0;
        _currentSquare = 0;
        _gameLogic = @{@4:@14, @9:@31, @20:@38, @28:@84, @40:@59, @51:@67, @63:@81, // Ladders
                       @17:@7, @64:@60, @89:@26, @96:@75, @99:@78 // Snakes
                       };
    }
    return self;
}


- (void)roll
{
    self.dice = arc4random_uniform(6)+1;
    
    if (self.currentSquare < 100)
    {
        self.currentSquare += self.dice;
    }
    
    NSNumber *newSquare = [self.gameLogic objectForKey:[NSNumber numberWithInteger:self.currentSquare]];
    if (newSquare)
    {
        self.currentSquare = [newSquare integerValue];
    }
    
    [self printRoll];
}

- (void)printRoll
{
    NSLog(@"Rolled a %li", self.dice);
    NSLog(@"Your current position is: %li", (long)self.currentSquare);
}

@end
