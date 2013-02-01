//
//  UIButton+SL.h
//  KVO Blocks Sample
//
//  Created by Stephan Leroux on 2013-01-31.
//  Copyright (c) 2013 Stephan Leroux. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (SL)

+ (UIButton *)buttonCenterAt:(CGPoint)center
                        size:(CGSize)size
                       title:(NSString *)title
                  buttonType:(UIButtonType)buttonType;


@end
