//
//  FractionCalc.h
//  Fraction Calculator Project
//
//  Created by Ryan Welch on 9/25/18.
//  Copyright © 2018 Ryan Welch. All rights reserved.
//

#ifndef FractionCalc_h
#define FractionCalc_h


#endif /* FractionCalc_h */
#import "Fraction.h"

@interface FractionCalc : NSObject

@property Fraction * currentFrac;

-(id) initWithFraction: (Fraction *) a;
-(void) add: (Fraction *) a;
-(void) subtract: (Fraction *) a;
-(void) multiply: (Fraction *) a;
-(void) divide: (Fraction *) a;

@end

