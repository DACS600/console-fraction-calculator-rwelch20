//
//  Fraction.m
//  Fraction Calculator Project
//
//  Created by Ryan Welch on 9/24/18.
//  Copyright © 2018 Ryan Welch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

-(id) initWithNumerator:(int)a andDenominator:(int)b
{
    self = [super init];
    if (self) {
        self.numerator = a;
        self.denominator = b;
    }
    return self;
}

-(void) simplify
{
    if (!self.numerator){
        self.denominator = 1;
    }
    else if (abs(self.numerator) > abs(self.denominator)) {
        int gcf = [self GCF: abs(self.numerator) and: abs(self.denominator)];
        self.numerator /= gcf;
        self.denominator /= gcf;
    }
    else {
        int gcf = [self GCF: abs(self.denominator) and: abs(self.numerator)];
        self.numerator /= gcf;
        self.denominator /= gcf;
    }
    if (self.numerator < 0 && self.denominator < 0) {
        self.numerator *= -1;
        self.denominator *= -1;
    }
}
-(int) GCF: (int) a and: (int) b
{
    if (!(a%b)) {
        return b;
    }
    return [self GCF: b and: a%b];
}
-(void) print
{
    printf("%i / %i\n", self.numerator, self.denominator);
}


@end
