#import <Foundation/NSObject.h>
#import "ruby.h"

@interface Fraction: NSObject {
  VALUE numerator;
  VALUE denominator;
}

-(void)   setNumerator:   (VALUE) _numerator;
-(void)   setDenominator: (VALUE) _denominator;
-(VALUE)  numerator;
-(VALUE)  denominator;

@end
