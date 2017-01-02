puts 'Whats your first name'
first_name = gets.chomp
puts 'Whats your last name'
last_name = gets.chomp

puts "Welcome to the name analyzer #{first_name} #{last_name}"
puts "Your first name has #{first_name.length} characters in it"
puts "Your first name has #{last_name.length} characters in it"
full_name = first_name + ' ' + last_name
puts "Your full name in reverse reads #{full_name.reverse}"
