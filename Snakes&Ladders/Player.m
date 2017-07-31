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
        _gameOver = NO;
    }
    return self;
}


- (void)roll
{
    self.dice = arc4random_uniform(6)+1;

    self.output = [NSString stringWithFormat:@"Rolled a %li", self.dice];
    NSLog(@"%@", self.output);
    
    self.currentSquare += self.dice;
    
    NSNumber *newSquare = [self.gameLogic objectForKey:[NSNumber numberWithInteger:self.currentSquare]];
    if (newSquare)
    {
        if (self.currentSquare == 28)
        {
            self.output = @"Stairway to heaven!\n";
        }
        else if (self.currentSquare == 89)
        {
            self.output = @"Highway to hell!\n";
        }
        else if ([newSquare integerValue] < self.currentSquare)
        {
            self.output = @"You landed on a snake.\n";
        }
        else
        {
            self.output = @"You landed on a ladder.\n";
        }
        self.output = [NSString stringWithFormat:@"%@Jumped from %li to %@", self.output, self.currentSquare, newSquare];
        
        self.currentSquare = [newSquare integerValue];
    }
    else
    {
        if (self.currentSquare > 99)
        {
            self.output = @"You've reached the end. Thank you for playing!";
            self.gameOver = YES;
        }
        else
        {
            self.output = [NSString stringWithFormat:@"You landed on %li", self.currentSquare];
        }
    }
    
    NSLog(@"%@", self.output);
    
    
}

@end
