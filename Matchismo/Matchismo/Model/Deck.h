//
//  Deck.h
//  Matchismo
//
//  Created by Chenyang  on 2/26/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject


- (void) addCard: (Card *)card atTop:(BOOL)atTop;
- (void) addCard:(Card *)card;


- (Card *)drawRandomCard;

@end
