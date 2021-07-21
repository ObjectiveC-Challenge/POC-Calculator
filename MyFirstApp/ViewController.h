//
//  ViewController.h
//  MyFirstApp
//
//  Created by José João Silva Nunes Alves on 20/07/21.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController {
    Calculator *basicCalculator;
    IBOutlet UILabel *displayLabel;
    double operator01, result;
    NSString *strDisplay, *operation;
    BOOL enablePoint, afterEqual, showNumberValid,enableCount;
}
@property (nonatomic, strong) Calculator *basicCalculator;
@property (nonatomic, strong) UILabel *displayLabel;
@property (nonatomic, strong) NSString *strDisplay, *operation;

- (IBAction)showClear;
- (IBAction)showDivide;
- (IBAction)showMultiply;
- (IBAction)showSubtract;
- (IBAction)showAdd;
- (IBAction)showEqual;
- (IBAction)numberWasTapped:(id)sender;

@end

//- (IBAction)buttonClicked:(id)sender {
//    NSLog(@"Button pressed: %@", [sender currentTitle]);
//}
