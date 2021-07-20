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

@synthesize basicCalculator, lblDisplay, strDisplay, operation;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.strDisplay = [[NSString alloc] init];
}


@end
