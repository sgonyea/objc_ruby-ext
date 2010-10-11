#import <Foundation/Foundation.h>
#import "fraction.h"
#import "ruby.h"

void  Init_fraction();
VALUE rb_get_numerator(VALUE);
VALUE rb_get_denominator(VALUE);
VALUE rb_set_numerator(VALUE, VALUE);
VALUE rb_set_denominator(VALUE, VALUE);
void  fraction_mark(Fraction*);
void  fraction_free(Fraction*);
VALUE fraction_allocate(VALUE);
VALUE fraction_initialize(VALUE);