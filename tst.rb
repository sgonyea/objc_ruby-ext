puts %Q{requiring... ./fraction}
puts require './fraction'

puts %Q{including... Fraction}
puts a = Fraction.new

puts "a.numerator = 23"
puts "=> #{a.numerator = 23}"

puts "a.denominator = 32"
puts "=> #{a.denominator = 32}"

