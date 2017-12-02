//
//  main.m
//  chap 6-4
//
//  Created by Rodney Kahane on 10/16/17.
//  Copyright © 2017 Rodney Kahane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TextCalc:NSObject

//accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

//math methods
-(void) add: (double) value;
-(void) sub: (double) value;
-(void) mul: (double) value;
-(void) div: (double) value;


@end

@implementation TextCalc
{
    //insert broad variables here
    double accumulator;
}//end broad variables

-(void) setAccumulator:(double)value {
    
    accumulator = value;
} //end setAccumulator

-(void) clear {
    accumulator = 0;
} //end clear

-(double) accumulator {
    return accumulator;
} //end accumulator

-(void) add: (double) value{
    
    accumulator += value;
    
}//end add

-(void) sub: (double) value{
    
    accumulator -= value;
    
}//end sub

-(void) mul: (double) value{
    
    accumulator *= value;
    
}//end mul

-(void) div: (double) value{
    
    accumulator /= value;
    
}//end div

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        double a,b;
        char c;
        
        TextCalc *myTextCalc;
        
        myTextCalc = [TextCalc alloc];
        myTextCalc = [myTextCalc init];
        
        NSLog(@"Enter a math function: ");
        scanf("%lf %c %lf", &a,&c,&b);
        
        [myTextCalc setAccumulator:a];
        
        if (c =='+'){
            [myTextCalc add:b];
            NSLog(@"the answer is: %lf",[myTextCalc accumulator]);
        } else if (c == '-') {
            [myTextCalc sub:b];
            NSLog(@"the answer is: %lf",[myTextCalc accumulator]);
        } else if (c == '*') {
            [myTextCalc mul:b];
            NSLog(@"the answer is: %lf",[myTextCalc accumulator]);
        } else if (c == '/') {
            [myTextCalc div:b];
            NSLog(@"the answer is: %lf",[myTextCalc accumulator]);
        } else {
            exit(0);
        }
        
        
    }
    return 0;
}
