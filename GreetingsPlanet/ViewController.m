//
//  ViewController.m
//  GreetingsPlanet
//
//  Created by Ryan March on 11/17/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize red_value, blue_value, green_value, warp_speed_text, initiated_status, upper_kirby, lower_kirby, colors_panel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithRed:.5 green:.5 blue:.5 alpha:1.0];
    
    colors_panel.layer.cornerRadius = 8.0;
    colors_panel.layer.borderWidth = .8;
    colors_panel.layer.borderColor = [UIColor blackColor].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dance_switch:(UISwitch *)sender {
    if([sender isOn]){
        upper_kirby.text = @"<(\"<)(>\")>";
        lower_kirby.text = @"(>\")><(\"<)";
    }
    else{
        lower_kirby.text = @"<(\"<)(>\")>";
        upper_kirby.text = @"(>\")><(\"<)";
    }
}

- (IBAction)slide_rgb:(UISlider *)sender {
    NSLog(@"Slider with TAG # %i clicked", (int)[sender tag]);
    
    if([sender tag] == 1){
        red_value = sender.value;
    }
    if([sender tag] == 2){
        green_value = sender.value;
    }
    if([sender tag] == 3){
        blue_value = sender.value;
    }
    
    self.view.backgroundColor = [UIColor colorWithRed:red_value green: green_value blue:blue_value alpha:1.0];
}

-(IBAction)initiate:(id)sender{
    NSLog(@"Initated");
    initiated_status.text = @"Initiated";
    
    colors_panel.hidden = (!colors_panel.hidden);
}


- (IBAction)change_speed:(UISlider *)sender {
    warp_speed_text.text = [NSString stringWithFormat:@"Warp Speed = %.2f", sender.value];
    
    NSLog(@"Slider's value = %f", sender.value);
}


@end
