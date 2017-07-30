//
//  InputHandler.m
//  Snakes&Ladders
//
//  Created by Elle Ti on 2017-07-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)input
{
    char input[100];
    
    fgets(input, 100, stdin);
    NSString *trimmedInput = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return trimmedInput;
}

@end
