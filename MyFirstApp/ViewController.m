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
    // Do any additional setup after loading the view.
    self.strDisplay = [[NSString alloc] init];
}

- (IBAction)numberWasTapped: (id)sender {

    if ([self.displayLabel.text  isEqual: @"0"]) {
        NSLog(@"aqui estou");
        displayLabel.text = @"";
    }
    self.displayLabel.text = [self.displayLabel.text stringByAppendingFormat:@"%ld",(long)[sender tag]];

}

@end
