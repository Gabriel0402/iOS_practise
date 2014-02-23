//
//  Card.h
//  Matchismo
//
//  Created by Chenyang  on 2/12/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card:NSObject

@property (strong,nonatomic) NSString *contents;
@property (nonatomic,getter = isChosen) BOOL chosen;
@property (nonatomic,getter=isMathched) BOOL matched;


- (int)match:(NSArray *) otherCards;



@end