#import "Fraction.h"

@implementation Fraction
-(void)   setNumerator: (VALUE) _numerator {
    numerator = _numerator;
}

-(void)   setDenominator: (VALUE) _denominator {
    denominator = _denominator;
}

-(VALUE)  denominator {
    return denominator;
}

-(VALUE)  numerator {
    return numerator;
}
@end