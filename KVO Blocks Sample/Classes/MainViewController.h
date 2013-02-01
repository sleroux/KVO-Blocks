//
//  MainViewController.h
//  kvo blocks sample
//
//  Created by Stephan Leroux on 2013-01-30.
//  Copyright (c) 2013 Stephan Leroux. All rights reserved.
//

#import <UIKit/UIKit.h>

@class User;

@interface MainViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) UITextField *userNameInput;
@property (nonatomic, weak) UITextField *emailInput;
@property (nonatomic, weak) UIButton *toggleObserversButton;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UITapGestureRecognizer *tapRecognizer;
@property (nonatomic, strong) User *user;
@property (nonatomic, assign) BOOL observersOn;

@end
