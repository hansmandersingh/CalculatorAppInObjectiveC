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

@end

@implementation ViewController

int tempNum;

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
    self.Symbol = nil;
    self.MainDisplay.text = @"0";
    self.SmallDisplay.text = @"";
}

- (IBAction)Plus:(UIButton *)sender {
    if (tempNum) {
        tempNum += [self.MainDisplay.text intValue];
    } else {
        tempNum = [self.MainDisplay.text intValue];
    }
    
    self.Symbol = sender.titleLabel.text;
    self.SmallDisplay.text = [NSString stringWithFormat:@"%i%@",tempNum,self.Symbol];
    self.MainDisplay.text = @"0";
}
- (IBAction)Sub:(UIButton *)sender {
    if (tempNum) {
        tempNum -= [self.MainDisplay.text intValue];
        
    }else {
        tempNum = [self.MainDisplay.text intValue];
        
    }
    self.Symbol = sender.titleLabel.text;
    
    self.SmallDisplay.text = [NSString stringWithFormat:@"%i%@",tempNum,self.Symbol];
    
    self.MainDisplay.text = @"0";
}
- (IBAction)Multiply:(UIButton *)sender {
    if (tempNum) {
        tempNum *= [self.MainDisplay.text intValue];
        
    } else {
        tempNum = [self.MainDisplay.text intValue];
    }
    
    self.Symbol = sender.titleLabel.text;
    
    self.SmallDisplay.text = [NSString stringWithFormat:@"%i%@",tempNum,self.Symbol];
    
    self.MainDisplay.text = @"0";
}
- (IBAction)Divide:(UIButton *)sender {
    if (tempNum) {
        tempNum /= [self.MainDisplay.text intValue];
    } else {
        tempNum = [self.MainDisplay.text intValue];
    }
    
    self.Symbol = sender.titleLabel.text;
    
    self.SmallDisplay.text = [NSString stringWithFormat:@"%i%@",tempNum,self.Symbol];
    
    self.MainDisplay.text = @"0";
}
- (IBAction)Equals:(UIButton *)sender {
    char thisChar = [self.SmallDisplay.text characterAtIndex:[self.SmallDisplay.text length] - 1];
    
    if (thisChar == '+') {
        tempNum += [self.MainDisplay.text intValue];
    } else if (thisChar == '-') {
        tempNum -= [self.MainDisplay.text intValue];
    } else if (thisChar == '*') {
        tempNum *= [self.MainDisplay.text intValue];
    } else if (thisChar == '/') {
        tempNum /= [self.MainDisplay.text intValue];
    }
    
    self.MainDisplay.text = [NSString stringWithFormat:@"Total: %d", tempNum];
    
    self.SmallDisplay.text = @"";
}

@end
