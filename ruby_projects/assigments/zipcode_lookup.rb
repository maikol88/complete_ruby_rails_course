dialbook = {
    'Hunstville' => 35816,
    'Anchorage'  => 99501,
    'Phoenix'    => 85001,
    'Little Rock'=> 72201,
    'Sacramento' => 94203,
    'Los Angeles'=> 90001,
    'Beverly Hills'=> 90209
}


stay_in_program = true

while stay_in_program == true
  puts "Enter city you want to get zipcode from or enter 'exit' to exit program"
  input = gets.chomp

  if dialbook.include?(input)
    puts dialbook[input]
  elsif input == 'exit'
    stay_in_program = false
  else
    puts "City is not in our dialbook. Try again"
  end
end