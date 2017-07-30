//
//  InputHandler.m
//  Snakes&Ladders
//
//  Created by Elle Ti on 2017-07-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)rollAdDice
{
    char input[10];
    
    fgets(input, 10, stdin);
    NSString *trimmedInput = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return trimmedInput;
}

@end
