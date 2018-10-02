 //
//  main.m
//  Fraction Calculator Project
//
//  Created by Ryan Welch on 9/24/18.
//  Copyright © 2018 Ryan Welch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FractionCalc.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int num;
        int denom = 0;
        printf("Enter the numerator of your Fraction: ");
        scanf("%i",&num);
        while (!denom) {
            printf("Enter the denominator of your Fraction: ");
            scanf("%i",&denom);
            if (!denom)
                printf("0 is not a valid denominator. Try again. \n");
        }
        Fraction *myFraction = [[Fraction alloc]initWithNumerator: num andDenominator:denom];
        FractionCalc *fracCalc = [[FractionCalc alloc] initWithFraction: myFraction];
        [fracCalc.currentFrac print];
        
        Fraction *newFrac = [[Fraction alloc]initWithNumerator: 1 andDenominator: 1];
        
        char action;
        while (true) {
            printf("Enter '+' to add, '-' to subtract, '*' to multiply, '/' to divide, 'c' to clear, or '0' to quit: ");
            //clear the keyboard buffer
            scanf("%c", &action);
            scanf("%c", &action);
            if(action == 'c')
                [fracCalc.currentFrac setNumerator: 0];
            else if(action == '+')
            {
                int num;
                int denom = 0;
                printf("Enter the numerator of the Fraction you would like to add: ");
                scanf("%i",&num);
                while (denom == 0) {
                    printf("Enter the denominator of the Fraction you would like to add: ");
                    scanf("%i",&denom);
                    if (!denom)
                        printf("0 is not a valid denominator. Try again. \n");
                }
                [newFrac setNumerator:num];
                [newFrac setDenominator:denom];
                int oldNum = [fracCalc.currentFrac numerator];
                int oldDenom = [fracCalc.currentFrac denominator];
                [fracCalc add:newFrac];
                printf("%i/%i  +  %i/%i = %i/%i \n", oldNum, oldDenom, num, denom, [fracCalc.currentFrac numerator], [fracCalc.currentFrac denominator]);
            }
            else if(action == '-')
            {
                int num;
                int denom = 0;
                printf("Enter the numerator of the Fraction you would like to subtract: ");
                scanf("%i",&num);
                while (denom == 0) {
                    printf("Enter the denominator of the Fraction you would like to subtract: ");
                    scanf("%i",&denom);
                    if (!denom)
                        printf("0 is not a valid denominator. Try again. \n");
                }
                [newFrac setNumerator:num];
                [newFrac setDenominator:denom];
                int oldNum = [fracCalc.currentFrac numerator];
                int oldDenom = [fracCalc.currentFrac denominator];
                [fracCalc subtract:newFrac];
                printf("%i/%i  -  %i/%i = %i/%i \n", oldNum, oldDenom, num, denom, [fracCalc.currentFrac numerator], [fracCalc.currentFrac denominator]);
            }
            else if(action == '*')
            {
                int num;
                int denom = 0;
                printf("Enter the numerator of the Fraction you would like to multiply: ");
                scanf("%i",&num);
                while (denom == 0) {
                    printf("Enter the denominator of the Fraction you would like to multiply: ");
                    scanf("%i",&denom);
                    if (!denom)
                        printf("0 is not a valid denominator. Try again. \n");
                }
                [newFrac setNumerator:num];
                [newFrac setDenominator:denom];
                int oldNum = [fracCalc.currentFrac numerator];
                int oldDenom = [fracCalc.currentFrac denominator];
                [fracCalc multiply:newFrac];
                printf("%i/%i  x  %i/%i = %i/%i \n", oldNum, oldDenom, num, denom, [fracCalc.currentFrac numerator], [fracCalc.currentFrac denominator]);
            }
            else if(action == '/')
            {
                int num;
                int denom = 0;
                printf("Enter the numerator of the Fraction you would like to divide: ");
                scanf("%i",&num);
                while (denom == 0) {
                    printf("Enter the denominator of the Fraction you would like to divide: ");
                    scanf("%i",&denom);
                    if (!denom)
                        printf("0 is not a valid denominator. Try again. \n");
                }
                [newFrac setNumerator:num];
                [newFrac setDenominator:denom];
                int oldNum = [fracCalc.currentFrac numerator];
                int oldDenom = [fracCalc.currentFrac denominator];
                [fracCalc divide:newFrac];
                printf("%i/%i  /  %i/%i = %i/%i \n", oldNum, oldDenom, num, denom, [fracCalc.currentFrac numerator], [fracCalc.currentFrac denominator]);
            }
            else if (action == '0')
                break;
            else
                printf("That is not a valid command. Try again. \n");
            printf("\n");
        }
        printf("Thanks for using the Fraction Calculator! \n");
        
        
        
        
        
        
        
        /*
        //FRACTION CLASS TEST
        Fraction *frac = [[Fraction alloc] init];
        NSLog(@"Numerator: %i", frac.numerator);
        NSLog(@"Denominator: %i", frac.denominator);
        
        [frac setNumerator: 0];
        [frac setDenominator: 5];
        
        NSLog(@"Numerator: %i", [frac numerator]);
        NSLog(@"Denominator: %i", [frac denominator]);
        
        [frac simplify];
        
        NSLog(@"Numerator: %i", [frac numerator]);
        NSLog(@"Denominator: %i", [frac denominator]);
         */
    }
    return 0;
}
