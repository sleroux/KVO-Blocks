//
//  MainViewController+Actions.m
//  KVO Blocks Sample
//
//  Created by Stephan Leroux on 2013-01-31.
//  Copyright (c) 2013 Stephan Leroux. All rights reserved.
//

#import "MainViewController+Actions.h"
#import "User.h"

@implementation MainViewController (Actions)

- (void)toggleObservers
{
    self.observersOn = !self.observersOn;
    [self.toggleObserversButton setTitle:self.observersOn ? @"Remove Observers" : @"Add Observers"
                                forState:UIControlStateNormal];
    
    if (self.observersOn) {
        // This is where the magic happens
        [self.user addObserver:self forKeyPath:@"email" options:0 context:nil withBlock:^(NSDictionary *change, void *context) {
            NSLog(@"Changed email");
        }];
        
        [self.user addObserver:self forKeyPath:@"username" options:0 context:nil withBlock:^(NSDictionary *change, void *context) {
            NSLog(@"Changed username");
        }];
    } else {
        [self.user removeBlockObserver:self forKeyPath:@"username"];
        [self.user removeBlockObserver:self forKeyPath:@"email"];
    }
}

- (void)tappedScrollView
{
    [self.userNameInput resignFirstResponder];
    [self.emailInput resignFirstResponder];
    
    [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
}

@end
