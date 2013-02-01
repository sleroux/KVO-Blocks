//
//  MainViewController.m
//  kvo blocks sample
//
//  Created by Stephan Leroux on 2013-01-30.
//  Copyright (c) 2013 Stephan Leroux. All rights reserved.
//

#import "MainViewController.h"
#import "User.h"

@implementation MainViewController

// Looking for the KVO code? Check out the MainViewController+Actions file
# pragma mark - View Initialization

- (void)loadView
{
    // Custom initialization
    CGRect appFrame = [[UIScreen mainScreen] applicationFrame];
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:appFrame];
    self.scrollView.contentSize = CGSizeMake(appFrame.size.width, appFrame.size.height + 100);
    self.scrollView.scrollEnabled = NO;
    self.scrollView.contentOffset = CGPointMake(0, 0);
    self.tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedScrollView)];
    [self.scrollView addGestureRecognizer:self.tapRecognizer];
    
    self.view = self.scrollView;
    
    self.userNameInput = [UITextField textFieldCenterAt:CGPointMake(self.view.frame.size.width / 2, 200)
                                                   size:CGSizeMake(200, 30)
                                            placeholder:@"Username"
                                            borderStyle:UITextBorderStyleRoundedRect
                                               delegate:self];
    
    self.emailInput = [UITextField textFieldCenterAt:CGPointMake(self.view.frame.size.width / 2, 240)
                                                size:CGSizeMake(200, 30)
                                         placeholder:@"Email"
                                         borderStyle:UITextBorderStyleRoundedRect
                                            delegate:self];
    
    self.toggleObserversButton = [UIButton buttonCenterAt:CGPointMake(self.view.frame.size.width / 2, 280)
                                                     size:CGSizeMake(200, 30)
                                                    title:self.observersOn ? @"Remove Observers" : @"Add Observers"
                                               buttonType:UIButtonTypeRoundedRect];
    [self.toggleObserversButton addTarget:self action:@selector(toggleObservers) forControlEvents:UIControlEventTouchUpInside];

    [self.scrollView addSubview:self.toggleObserversButton];
    [self.scrollView addSubview:self.userNameInput];
    [self.scrollView addSubview:self.emailInput];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.user = [[User alloc] init];
}

- (void)dealloc
{
    self.scrollView = nil;
}

# pragma mark - UITextFieldDelegate

- (void)textFieldDidBeginEditing:(UITextView *)textView
{
    [self.scrollView setContentOffset:CGPointMake(0, 100) animated:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField == self.userNameInput) {
        self.user.username = self.userNameInput.text;
    } else if (textField == self.emailInput) {
        self.user.email = self.emailInput.text;
    }
}


@end
