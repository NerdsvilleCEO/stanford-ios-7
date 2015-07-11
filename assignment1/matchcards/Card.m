//
//  Card.m
//  
//
//  Created by Joshua Santos on 7/10/15.
//
//

#import "Card.h"

@implementation Card
-(BOOL) match:(Card *) card{
    return [card.contents isEqualToString:self.contents];
}
@end
