#import "rb_fraction.h"

// Defining a space for information and references about the module to be stored internally
VALUE               rb_cFraction = Qnil;
Fraction           *frac;

void Init_fraction() {
  frac          = [[Fraction alloc] init];
  rb_cFraction  = rb_define_class("Fraction", rb_cObject);

  rb_define_alloc_func(rb_cFraction, fraction_allocate);

  rb_define_method(rb_cFraction, "initialize",    fraction_initialize,  0);
  rb_define_method(rb_cFraction, "numerator=",    rb_set_numerator,     1);
  rb_define_method(rb_cFraction, "numerator",     rb_get_numerator,     0);
  rb_define_method(rb_cFraction, "denominator=",  rb_set_denominator,   1);
  rb_define_method(rb_cFraction, "denominator",   rb_get_denominator,   0);
}

VALUE rb_get_numerator(VALUE self) {
  return [frac numerator];
}

VALUE rb_get_denominator(VALUE self) {
  return [frac denominator];
}

VALUE rb_set_numerator(VALUE self, VALUE numerator) {
  if(frac) {
    [frac setNumerator:numerator];
    return [frac numerator];
  }
  return Qnil;
}

VALUE rb_set_denominator(VALUE self, VALUE denominator) {
  if(frac) {
    [frac setDenominator:denominator];
    return [frac denominator];
  }
  return Qnil;
}

void fraction_mark(Fraction *fraction) {
  rb_gc_mark([fraction numerator]);
  rb_gc_mark([fraction denominator]);
}

void fraction_free(Fraction *fraction) {
  [fraction release];
}

VALUE fraction_allocate(VALUE klass) {
  if(!frac) {
    frac = [[Fraction alloc] init];
  }

  [frac setDenominator:Qnil];
  [frac setNumerator:Qnil];

  return Data_Wrap_Struct(klass, fraction_mark, fraction_free, frac);
}

VALUE fraction_initialize(VALUE self) {
  Fraction *fraction;
// Can't use Data_Get_Struct, but it's 'coo.
//  Data_Get_Struct(self, Fraction, fraction);
  fraction = (Fraction*)DATA_PTR(self);
  return self;
}

