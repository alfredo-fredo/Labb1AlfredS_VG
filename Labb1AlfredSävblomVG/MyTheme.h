//
//  MyTheme.h
//  Labb1AlfredSävblomVG
//
//  Created by Alfred on 2020-01-19.
//  Copyright © 2020 Alfred. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTheme : UIColor

@property (class) UIColor* themeColor;

+ (UIColor*) themeColor;

+ (void)setThemeColor:(UIColor*)color;

@end

NS_ASSUME_NONNULL_END
