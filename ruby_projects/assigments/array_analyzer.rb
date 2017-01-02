def printer(arr)
  puts 'Printing array:'
  print arr
  print "\n"
end

def find_if_empty(arr)
  puts 'Is array empty?'
  puts "#{arr.empty?}"
end

def find_if_nil(arr)
  puts 'Is array nil?'
  puts "#{arr.nil?}"
end

def find_if_miguel(arr)
  puts 'Contains miguel?'
  puts "#{arr.include? ("miguel")}"
end

def do_reverse(arr)
  puts 'This is array reversed'
  print arr.reverse
  print "\n"
end

def shuffle(arr)
  puts 'This is array shuffled:'
  print arr.shuffle
  print "\n"
end

def join(arr)
  puts 'This is array joined:'
  puts arr.join
end

def print_odd_numbers(arr)
  puts "Will aonly print odd numbers"
  arr.select do |number|
    if number.is_a? Integer
      puts "The element #{number} is odd? #{number.odd?}"
    else
      puts "The element #{number} is not an integer, did not evaulate."
    end
  end
end

