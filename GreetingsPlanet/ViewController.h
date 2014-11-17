//
//  ViewController.h
//  GreetingsPlanet
//
//  Created by Ryan March on 11/17/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property float red_value, green_value, blue_value;
@property (weak, nonatomic) IBOutlet UILabel *warp_speed_text;
@property (weak, nonatomic) IBOutlet UILabel *initiated_status;
@property (weak, nonatomic) IBOutlet UILabel *upper_kirby;
@property (weak, nonatomic) IBOutlet UILabel *lower_kirby;
@property (weak, nonatomic) IBOutlet UIView *colors_panel;

- (IBAction)initiate:(id)sender;
- (IBAction)change_speed:(UISlider *)sender;
- (IBAction)dance_switch:(UISwitch *)sender;
- (IBAction)slide_rgb:(UISlider *)sender;



@end

