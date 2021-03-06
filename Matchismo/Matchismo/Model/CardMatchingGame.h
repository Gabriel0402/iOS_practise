//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Chenyang  on 2/28/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

- (instancetype) initWithCardCount: (NSUInteger) count usingDeck:(Deck *) deck;

- (void) chooseCardAtIndex: (NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger) index;

@property (nonatomic, readonly) NSInteger score;

@end
