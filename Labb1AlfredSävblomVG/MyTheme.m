//
//  MyTheme.m
//  Labb1AlfredSävblomVG
//
//  Created by Alfred on 2020-01-19.
//  Copyright © 2020 Alfred. All rights reserved.
//

#import "MyTheme.h"
#import <UIKit/UIKit.h>

@implementation MyTheme

static UIColor* themeColor;

+ (UIColor*) themeColor {
    return themeColor;
}

+ (void)setThemeColor:(UIColor*)color
{
    themeColor = color;
}

@end
