//
//  Deck.h
//  
//
//  Created by Joshua Santos on 7/10/15.
//
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
@property (strong, nonatomic) NSMutableArray *cards;
-(void) addCard:(Card *) card atTop:(BOOL) top;
-(void) addCard:(Card *) card;
-(Card *) drawRandomCard;
@end
