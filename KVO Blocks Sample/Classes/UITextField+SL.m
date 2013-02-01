//
//  UITextField+SL.m
//  kvo blocks sample
//
//  Created by Stephan Leroux on 2013-01-30.
//  Copyright (c) 2013 Stephan Leroux. All rights reserved.
//

#import "UITextField+SL.h"

@implementation UITextField (SL)

+ (UITextField *)textFieldCenterAt:(CGPoint)position
                              size:(CGSize)size
                       placeholder:(NSString *)placeholder
                       borderStyle:(UITextBorderStyle)style
                          delegate:(id<UITextFieldDelegate>)delegate
{
    UITextField *field = [[UITextField alloc] initWithFrame:CGRectMake(position.x - (size.width / 2), position.y - (size.height / 2), size.width, size.height)];
    field.placeholder = placeholder;
    field.borderStyle = style;
    field.delegate = delegate;
    return field;
}

@end
