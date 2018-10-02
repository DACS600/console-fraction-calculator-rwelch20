//
//  FractionCalc.m
//  Fraction Calculator Project
//
//  Created by Ryan Welch on 9/25/18.
//  Copyright © 2018 Ryan Welch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FractionCalc.h"

@implementation FractionCalc

-(id) initWithFraction: (Fraction *) a
{
    self = [super init];
    if (self) {
        self.currentFrac = a;
    }
    return self;
}

-(void) add: (Fraction *) a
{
    [self.currentFrac setNumerator: (self.currentFrac.numerator * a.denominator)+(self.currentFrac.denominator * a.numerator)];
    [self.currentFrac setDenominator: self.currentFrac.denominator * a.denominator];
    [self.currentFrac simplify];
}
-(void) subtract: (Fraction *) a
{
    [self.currentFrac setNumerator: (self.currentFrac.numerator * a.denominator)-(self.currentFrac.denominator * a.numerator)];
    [self.currentFrac setDenominator: self.currentFrac.denominator * a.denominator];
    [self.currentFrac simplify];
}
-(void) multiply: (Fraction *) a
{
    [self.currentFrac setNumerator: self.currentFrac.numerator * a.numerator];
    [self.currentFrac setDenominator: self.currentFrac.denominator * a.denominator];
    [self.currentFrac simplify];
}
-(void) divide: (Fraction *) a
{
    [self.currentFrac setNumerator: self.currentFrac.numerator * a.denominator];
    [self.currentFrac setDenominator: self.currentFrac.denominator * a.numerator];
    [self.currentFrac simplify];
}

@end

/*
Fraction *newFrac = [[Fraction alloc] init];
[newFrac setNumerator: (self.currentFrac.numerator * a.denominator) + (self.currentFrac.denominator * a.numerator)];
[newFrac setDenominator: self.currentFrac.denominator * a.denominator];
[newFrac simplify];
return newFrac;
 */
