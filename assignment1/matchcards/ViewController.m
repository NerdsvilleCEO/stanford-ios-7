//
//  ViewController.m
//  matchcards
//
//  Created by Joshua Santos on 7/10/15.
//  Copyright (c) 2015 Joshua Santos. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *card;
@property (strong, nonatomic) PlayingCardDeck *cardDeck;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.cardDeck = [[PlayingCardDeck alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onTouchCard:(id)sender {
    if([[sender currentTitle] length]){
        [sender setTitle:@""
                forState:UIControlStateNormal];
        [sender setBackgroundImage: [UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
    }
    else{
        Card *card = [self.cardDeck drawRandomCard];
        [sender setTitle:card.contents forState:UIControlStateNormal];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"] forState:UIControlStateNormal];
    }
}

@end
