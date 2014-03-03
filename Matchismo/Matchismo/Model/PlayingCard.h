//
//  PlayingCard.h
//  Matchismo
//
//  Created by Chenyang  on 2/26/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSArray *)rankStrings;
+ (NSUInteger) maxRank;

@end
