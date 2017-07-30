//
//  main.m
//  Snakes&Ladders
//
//  Created by Elle Ti on 2017-07-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        Player *player = [[Player alloc] init];
        
        NSLog(@"Welcome to Snakes & Ladders.\nPlease type 'roll' or 'r' to roll");
        
        while (gameOn)
        {
            NSString *convertedString = [InputHandler input];
            
            if ([convertedString isEqualToString:@"quit"])
            {
                NSLog(@"Thanks for playing");
                break;
            }
            else if ([convertedString isEqualToString:@"roll"] || [convertedString isEqualToString:@"r"])
            {
                [player roll];
            }
        }
    }
    return 0;
}
