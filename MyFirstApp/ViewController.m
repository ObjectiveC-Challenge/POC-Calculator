//
//  ViewController.m
//  MyFirstApp
//
//  Created by José João Silva Nunes Alves on 20/07/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize basicCalculator, displayLabel, strDisplay, operation;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.strDisplay = [[NSString alloc] init];
    operation = [[NSString alloc] init];
    afterEqual = FALSE;
    showNumberValid = TRUE;
    enablePoint = TRUE;
    enableCount = FALSE;
    displayLabel.text = @"0";
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (IBAction)showClear {
    strDisplay = @"";
    displayLabel.text = strDisplay;
    displayLabel.text = @"0";
    operation = @"";
}

- (IBAction)showDivide {
    if (!afterEqual) {
        [self showEqual];
        enableCount = TRUE;
    }
    operation = @"4";
    operator01 = [self.strDisplay doubleValue];
    self.strDisplay = @"";
}

- (IBAction)showMultiply {
    if (!afterEqual) {
     [self showEqual];
     enableCount = TRUE;
    }
    operation = @"3";
    operator01 = [self.strDisplay doubleValue];
    self.strDisplay = @"";
    enableCount = FALSE;
}

- (IBAction)showSubtract {
    if (!afterEqual) {
     [self showEqual];
     enableCount = TRUE;
    }
    operation = @"2";
    operator01 = [self.strDisplay doubleValue];
    self.strDisplay = @"";
    enableCount = FALSE;
}

- (IBAction)showAdd {
    if (!afterEqual) {
     [self showEqual];
     enableCount = TRUE;
    }
    operation = @"1";
    operator01 = [self.strDisplay doubleValue];
    self.strDisplay = @"";
    enableCount = FALSE;
}

- (IBAction)numberWasTapped: (id)sender {
    self.displayLabel.text = [self.displayLabel.text stringByAppendingFormat:@"%ld",(long)[sender tag]];
}

- (IBAction)showEqual {
    if(![operation isEqual: @""]) {
        basicCalculator = [[Calculator alloc] init];
        [basicCalculator setAccumulator:operator01];
        switch ([operation intValue]) {
            case 1:
                [basicCalculator add:[self.strDisplay doubleValue]];
                break;
            case 2:
                [basicCalculator subtract:[self.strDisplay doubleValue]];
                break;
            case 3:
                [basicCalculator multiply:[self.strDisplay doubleValue]];
                break;
            case 4:
                [basicCalculator division:[self.strDisplay doubleValue]];
                break;
            default:
                break;
        }
        result = [basicCalculator getAccumulator];
        [self showClear];
        self.strDisplay = [self.strDisplay stringByAppendingFormat:@"%g",result];
        displayLabel.text = self.strDisplay;
        operator01 = 0;
        result = 0;
        [basicCalculator release];
        afterEqual = TRUE;
    }
}

@end
