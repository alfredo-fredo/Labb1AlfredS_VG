//
//  PictureScreenViewController.m
//  Labb1AlfredSävblomVG
//
//  Created by Alfred on 2020-01-19.
//  Copyright © 2020 Alfred. All rights reserved.
//

#import "PictureScreenViewController.h"
#import "MyTheme.h"

@interface PictureScreenViewController ()

@end

@implementation PictureScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if(MyTheme.themeColor != nil){
        self.view.backgroundColor = MyTheme.themeColor;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
