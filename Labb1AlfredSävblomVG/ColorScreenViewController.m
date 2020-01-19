//
//  ColorScreenViewController.m
//  Labb1AlfredSävblomVG
//
//  Created by Alfred on 2020-01-17.
//  Copyright © 2020 Alfred. All rights reserved.
//

#import "ColorScreenViewController.h"
#import "MyTheme.h"

@interface ColorScreenViewController ()
@property (weak, nonatomic) IBOutlet UISlider *rSliderUI;
@property (weak, nonatomic) IBOutlet UISlider *gSliderUI;
@property (weak, nonatomic) IBOutlet UISlider *bSliderUI;

@end

@implementation ColorScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if(MyTheme.themeColor != nil){
        self.view.backgroundColor = MyTheme.themeColor;
    }
}

- (void)updateColor {
    self.view.backgroundColor = [UIColor colorWithRed:(self.rSliderUI.value / 255) green:(self.gSliderUI.value / 255) blue:(self.bSliderUI.value / 255) alpha:(1.0)];
    MyTheme.themeColor = self.view.backgroundColor;
}

- (IBAction)rSlider:(id)sender {
    [self updateColor];
}

- (IBAction)gSlider:(id)sender {
    [self updateColor];
}

- (IBAction)bSlider:(id)sender {
    [self updateColor];
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
