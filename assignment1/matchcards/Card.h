//
//  Card.h
//  
//
//  Created by Joshua Santos on 7/10/15.
//
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (nonatomic, strong) NSString *contents;
-(BOOL) match : (Card *) card;
@end
