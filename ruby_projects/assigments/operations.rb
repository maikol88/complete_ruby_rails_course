require './operations_methods'

puts 'Whats first number'
first = gets.chomp
puts 'Whats second number'
second = gets.chomp


puts 'What do you want to do? m) multiply, d) divide, a) add, s) subtract, r) get remainder'
user_input = gets.chomp
user_input.downcase!
case user_input
  when user_input = "m" then puts "First number multiplied to second is: #{multiply(first, second)}"
  when user_input = "d" then puts "First number divided by second is: #{divide(first, second)}"
  when user_input = "a" then puts "First number added to second is: #{add(first, second)}"
  when user_input = "s" then puts "First number subtracted to second is: #{substract(first, second)}"
  when user_input = "r" then puts "First number mod the second is: #{mod(first, second)}"
  else
    puts "Input not valid, exiting."
end
