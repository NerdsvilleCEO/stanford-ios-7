//
//  PlayingCardDeck.m
//  
//
//  Created by Joshua Santos on 7/11/15.
//
//

#import "PlayingCardDeck.h"

@implementation PlayingCardDeck
-(instancetype) init{
    self = [super init];
    if(self){
        for(NSUInteger i=1; i <= [PlayingCard maxRank]; i++){
            for(NSUInteger j=1; j<=4; j++){
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = i;
                card.suit = [PlayingCard validSuits][j];
                [self addCard:card atTop:YES];
            }
        }
    }
    
    return self;
}

@end
