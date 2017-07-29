//
//  InputHandler.m
//  Snakes&Ladders
//
//  Created by Elle Ti on 2017-07-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)rollAdDice:(NSString *)roll
{
    char input[10];
    
    NSLog(@"Welcome to Snakes & Ladders.\nPlease type 'roll' or 'r' to roll%@", roll);
    
    fgets(input, 10, stdin);
    NSString *trimmedInput = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return trimmedInput;
}

@end
