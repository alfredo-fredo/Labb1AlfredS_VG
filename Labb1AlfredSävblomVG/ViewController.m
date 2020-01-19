//
//  ViewController.m
//  Labb1AlfredSävblomVG
//
//  Created by Alfred on 2020-01-13.
//  Copyright © 2020 Alfred. All rights reserved.
//

#import "ViewController.h"
#import "MyTheme.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if(MyTheme.themeColor != nil){
        self.view.backgroundColor = MyTheme.themeColor;
    }

}

- (void)viewDidAppear:(BOOL)animated{
    if(MyTheme.themeColor != nil){
        self.view.backgroundColor = MyTheme.themeColor;
    }
}


@end
