//
//  Fraction.h
//  Fraction Calculator Project
//
//  Created by Ryan Welch on 9/24/18.
//  Copyright © 2018 Ryan Welch. All rights reserved.
//

#ifndef Fraction_h
#define Fraction_h


#endif /* Fraction_h */

@interface Fraction : NSObject

@property int numerator;
@property int denominator;

-(id) initWithNumerator: (int) a andDenominator: (int) b;
-(void) simplify;
-(void) print;

@end


