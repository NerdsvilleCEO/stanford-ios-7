//
//  PlayingCard.h
//  
//
//  Created by Joshua Santos on 7/10/15.
//
//

#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;
+(NSArray *) validSuits;
+(NSUInteger) maxRank;
@end
