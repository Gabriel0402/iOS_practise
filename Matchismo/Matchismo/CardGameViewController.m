//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Chenyang  on 2/10/14.
//  Copyright (c) 2014 Chenyang . All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface CardGameViewController ()
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation CardGameViewController


- (CardMatchingGame *)game
{
    if(!_game) _game=[[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    return _game;
}


- (Deck *)deck
{
    if(!_deck) _deck=[self createDeck];
    return _deck;
}


- (Deck *)createDeck;
{
    return [[PlayingCardDeck alloc] init];
    
}





- (IBAction)touchCardButton:(UIButton *)sender
{
    int chosedButtonIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chosedButtonIndex];
    [self updateUI];
    
}

- (void) updateUI
{
    for (UIButton *cardButton in self.cardButtons) {
        int cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex: cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled=!cardButton.enabled;
        self.scoreLabel.text=[NSString stringWithFormat:@"Score: %d", self.game.score];
    }
}

- (NSString *) titleForCard: (Card *)card
{
    return card.isChosen?card.contents :@"";
}

- (UIImage *) backgroundImageForCard:(Card *)card
{
    return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
}

@end
