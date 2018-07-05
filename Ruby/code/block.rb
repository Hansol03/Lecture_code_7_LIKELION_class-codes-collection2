numbers = [1,2,3,4,5]
str_numbers = []
# block ? => 코드의 묶음
#1. {}
#2. do ... end 
# numbers.each do |num|
#     str_numbers.push(num.to_s)
# end

#  str_numbers.each {|num| puts num.class}

# numbers.map! do |num|
#     num +=5
# end

# puts numbers

numbers.map! {|num| num +=5}

puts numbers