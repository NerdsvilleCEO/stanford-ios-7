//
//  PlayingCard.m
//  
//
//  Created by Joshua Santos on 7/10/15.
//
//

#import "PlayingCard.h"

@interface PlayingCard()
@end

@implementation PlayingCard

-(NSString *) contents{
    return [self.getRank stringByAppendingString:self.suit];
}

-(NSString *) getRank{
    return [PlayingCard validRanks][self.rank];
}

-(void) setRank:(NSUInteger)rank{
    if([PlayingCard maxRank] >= rank){
         _rank = rank;
    }
}

-(void) setSuit:(NSString *)suit{
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}

+(NSUInteger) maxRank{
    return [[PlayingCard validRanks] count] - 1;
}

+(NSArray *) validSuits{
    NSArray *validSuits = @[@"?",@"♥︎", @"♣︎", @"♠︎", @"◆"];
    return validSuits;
}

+(NSArray *) validRanks{
    NSArray *validRanks = @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    return validRanks;
}

@end
