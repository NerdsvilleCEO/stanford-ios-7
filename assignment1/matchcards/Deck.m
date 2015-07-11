//
//  Deck.m
//  
//
//  Created by Joshua Santos on 7/10/15.
//
//

#import "Deck.h"

@implementation Deck
-(void)addCard:(Card *)card atTop:(BOOL)top{
    if(top){
        [self.cards addObject:card];
    }
    else{
        [self.cards insertObject:card atIndex:0];
    }
}

-(NSArray *) cards{
    if(!_cards){
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

-(void)addCard:(Card *)card{
    [self addCard:card atTop:NO];
}

-(Card *)drawRandomCard{
    NSInteger randomIndex = arc4random() % [self.cards count];
    Card *card = self.cards[randomIndex];
    [self.cards removeObjectAtIndex:randomIndex];
    return card;
}
@end
