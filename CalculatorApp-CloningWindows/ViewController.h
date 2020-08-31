//
//  ViewController.h
//  CalculatorApp-CloningWindows
//
//  Created by Hansmander Singh on 2020-08-26.
//  Copyright © 2020 hansmander Singh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *MainDisplay;
@property (weak, nonatomic) IBOutlet UILabel *SmallDisplay;
@property NSString *Symbol;

@end

