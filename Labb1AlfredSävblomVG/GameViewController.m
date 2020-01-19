//
//  GameViewController.m
//  Labb1AlfredSävblomVG
//
//  Created by Alfred on 2020-01-17.
//  Copyright © 2020 Alfred. All rights reserved.
//

#import "GameViewController.h"
#import "MyTheme.h"

@interface GameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *guess_input;
@property (weak, nonatomic) IBOutlet UILabel *text_output;
- (IBAction)SliderValue:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *SliderUI;
@property (weak, nonatomic) IBOutlet UILabel *text_value;


@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if(MyTheme.themeColor != nil){
        self.view.backgroundColor = MyTheme.themeColor;
    }

    self.random_number = arc4random_uniform(99);
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btn_guess:(id)sender {
    
    if(self.guess_number == self.random_number){
        self.text_output.text = [NSString stringWithFormat: @"You won with the number %ld ", (long)self.guess_number];
        self.random_number = arc4random_uniform(99);
        
    } else if(self.guess_number > self.random_number){
        self.text_output.text = [NSString stringWithFormat: @"%ld Is too high ", (long)self.guess_number];
    }else if(self.guess_number < self.random_number){
        self.text_output.text =[NSString stringWithFormat:@"%ld Is too low ", (long)self.guess_number];
    }
}

- (IBAction)SliderValue:(id)sender {
    self.text_value.text = [NSString stringWithFormat:@"%ld", (long)self.SliderUI.value];
    
    self.guess_number = self.SliderUI.value;
    
}
@end
