//
//  Player.h
//  Snakes&Ladders
//
//  Created by Elle Ti on 2017-07-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSInteger dice;
@property (nonatomic) NSDictionary* gameLogic;
@property (nonatomic) NSString *output;
@property (nonatomic) BOOL gameOver;

- (void)roll;

@end
