//
//  UITextField+SL.h
//  kvo blocks sample
//
//  Created by Stephan Leroux on 2013-01-30.
//  Copyright (c) 2013 Stephan Leroux. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (SL)

+ (UITextField *)textFieldCenterAt:(CGPoint)position
                              size:(CGSize)size
                       placeholder:(NSString *)placeholder
                       borderStyle:(UITextBorderStyle)style
                          delegate:(id<UITextFieldDelegate>)delegate;

@end
