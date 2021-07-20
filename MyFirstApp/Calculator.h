//
//  NSObject+Calculator.h
//  MyFirstApp
//
//  Created by José João Silva Nunes Alves on 20/07/21.
//

#import <Foundation/Foundation.h>


@interface Calculator: NSObject {
    double accumulator;
}

- (void)setAccumulator: (double)value;
- (double)getAccumulator;

- (void)clear;

- (void)add: (double)value;
- (void)subtract: (double)value;
- (void)multiply: (double)value;
- (void)division: (double)value;
@end

