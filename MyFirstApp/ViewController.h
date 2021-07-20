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
    IBOutlet UILabel *lblDisplay;
    double operator01, result;
    NSString *strDisplay, *operation;
    BOOL enablePoint, afterEqual, showNumberValid,enableCount;
}
@property (nonatomic, strong) Calculator *basicCalculator;
@property (nonatomic, strong) UILabel *lblDisplay;
@property (nonatomic, strong) NSString *strDisplay, *operation;

- (IBAction)showClear;
- (IBAction)showDivide;
- (IBAction)show9;
- (IBAction)show8;
- (IBAction)show7;
- (IBAction)showMultiply;
- (IBAction)show6;
- (IBAction)show5;
- (IBAction)show4;
- (IBAction)showSubtract;
- (IBAction)show3;
- (IBAction)show2;
- (IBAction)show1;
- (IBAction)showAdd;
- (IBAction)show0;
- (IBAction)showEqual;
- (void)showNumber:(NSString *)number;
- (IBAction)show:(id)sender;

@end

//- (IBAction)buttonClicked:(id)sender {
//    NSLog(@"Button pressed: %@", [sender currentTitle]);
//}
