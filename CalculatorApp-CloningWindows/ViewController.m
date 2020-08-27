//
//  ViewController.m
//  CalculatorApp-CloningWindows
//
//  Created by Hansmander Singh on 2020-08-26.
//  Copyright © 2020 hansmander Singh. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *MainDisplay;
@property (weak, nonatomic) IBOutlet UILabel *SmallDisplay;
@property NSString *Symbol;

@end

@implementation ViewController

float tempNum = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (IBAction)Zero:(UIButton *)sender { //all buttons clicks handler
    if ([self.MainDisplay.text isEqualToString:@"0"]) {
        self.MainDisplay.text = @"";
    }
    
    self.MainDisplay.text = [self.MainDisplay.text stringByAppendingString:sender.titleLabel.text];
}

- (IBAction)Dot:(UIButton *)sender {
    if (![self.MainDisplay.text containsString:@"."]) {
        self.MainDisplay.text = [self.MainDisplay.text stringByAppendingString:sender.titleLabel.text];
    }
}

- (IBAction)ClearAll:(UIButton *)sender {
    self.MainDisplay.text = @"0";
}

- (IBAction)Plus:(UIButton *)sender {
    tempNum = [self.MainDisplay.text integerValue];
    self.Symbol = [self.Symbol stringByAppendingString: sender.titleLabel.text];
    
    if (tempNum != 0) {
        tempNum += [self.MainDisplay.text integerValue];
    } else {
        tempNum = [self.MainDisplay.text integerValue];
    }
    
    NSString *newString = [NSString stringWithFormat:@"%f", tempNum];
    
    self.SmallDisplay.text = [newString stringByAppendingString:self.Symbol];
}

@end
