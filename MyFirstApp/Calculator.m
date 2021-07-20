//
//  NSObject+Calculator.m
//  MyFirstApp
//
//  Created by José João Silva Nunes Alves on 20/07/21.
//

#import "Calculator.h"

@implementation Calculator

- (void)setAccumulator: (double)value {
    accumulator = value; // testar o self aqui
}

- (double)getAccumulator {
    return accumulator;
}

- (void)clear {
    accumulator = 0;
}

- (void)add: (double)value {
    accumulator += value;
}

- (void)subtract: (double)value {
    accumulator -= value;
}

- (void)multiply: (double)value {
    accumulator *= value;
}

- (void)division: (double)value {
    accumulator /= value;
}

@end
