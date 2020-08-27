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

@end

@implementation ViewController

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

@end
