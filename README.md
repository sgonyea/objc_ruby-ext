Compiling a Ruby Extension in Objective-C is rather confusing at first. In large part, this is due to mkmf. You can see an e-mail I sent to ruby-core, for some background:

  __Topic:__ [2010-10-08 - Question on prior patch to mkmf (+ patch)](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/32729)

My hope is to eventually create something similar to mkmf, sans the problems that have been dug into mkmf.

Before I finally get started, I'd like to note that I've attempted to keep this along the lines of "[How to create a Ruby extension in C in under 5 minutes](http://www.rubyinside.com/how-to-create-a-ruby-extension-in-c-in-under-5-minutes-100.html)." In addition, I highly recommend reading "[Writing your very own Ruby extension with C](http://fixnum.org/blog/2007/ruby_c/)."

### Source Code

  [github.com/aitrus/objc_ruby-ext](http://github.com/aitrus/objc_ruby-ext)

### Setup

Mac OS X: The standard XCode should suffice. I'm using ruby-1.9.2-p0, installed via rvm.

Linux: You'll need to install objective-c (gobjc), in addition to gcc. Again, ruby-1.9.2-p0 via rvm.


### More to come

This README is unfinished, at present. One special note is to read my comments in rb_fraction.m (method: fraction_initialize). You cannot call "Data_Get_Struct" as Ruby's macro performs Type checking on the datatype you want back. As you are storing an Objective-C Object, and not a C Struct, it will fail the Macro's type checking.

