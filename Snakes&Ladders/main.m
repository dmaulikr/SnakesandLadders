//
//  main.m
//  Snakes&Ladders
//
//  Created by Elle Ti on 2017-07-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        char input[100];
        
        while (gameOn)
        {
            NSLog(@"Welcome");
            
            fgets(input, 100, stdin);
            
            NSString *convertedString = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([convertedString isEqualToString:@"quit"])
            {
                NSLog(@"Goodbye");
                break;
            }
            else if ([convertedString isEqualToString:@"roll"] || [convertedString isEqualToString:@"r"])
            {
                NSLog(@"Playing");
                continue;
            }
        }
    }
    return 0;
}
