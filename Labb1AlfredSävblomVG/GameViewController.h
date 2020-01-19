//
//  GameViewController.h
//  Labb1AlfredSävblomVG
//
//  Created by Alfred on 2020-01-17.
//  Copyright © 2020 Alfred. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameViewController : UIViewController

@property (nonatomic) int random_number;
@property (nonatomic) int guess_number;

- (IBAction)btn_guess:(id)sender;

@end

NS_ASSUME_NONNULL_END
