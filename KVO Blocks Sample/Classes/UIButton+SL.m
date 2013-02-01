//
//  UIButton+SL.m
//  KVO Blocks Sample
//
//  Created by Stephan Leroux on 2013-01-31.
//  Copyright (c) 2013 Stephan Leroux. All rights reserved.
//

#import "UIButton+SL.h"

@implementation UIButton (SL)

+ (UIButton *)buttonCenterAt:(CGPoint)center
                        size:(CGSize)size
                       title:(NSString *)title
                  buttonType:(UIButtonType)buttonType
{
    UIButton *button = [UIButton buttonWithType:buttonType];
    button.frame = CGRectMake(center.x - (size.width / 2), center.y - (size.height / 2), size.width, size.height);
    [button setTitle:title forState:UIControlStateNormal];
    return button;
}

@end
