//
//  ViewController.m
//  LineLess V2
//
//  Created by Devin DiSabatino on 1/18/15.
//  Copyright (c) 2015 Disabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.slider setMaximumValue:50];
    [self.slider setMinimumValue:0];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sliderChanged:(id)sender {
    int lineValue = (int) self.slider.value;
    self.numberLabel.text = [NSString stringWithFormat:@"%d", lineValue];
}

//Any other information that should be obtained BEFORE THE USER HAS WAITED IN LINE

//Will modally present another view, with a countdown or some presentation of wait time and verification if it is correct.


@end
