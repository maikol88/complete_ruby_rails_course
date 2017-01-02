require './array_analyzer'

puts "Array is: [1,2,3,4,5,6,7,8,9,10,'miguel', 'saldana',[1,2,3,4], :a, :b}"
array = [1,2,3,4,5,6,7,8,9,10,'miguel', 'saldana', [1,2,3,4], :a, :b]


printer(array)
find_if_empty(array)
find_if_nil(array)
find_if_miguel(array)
do_reverse(array)
shuffle(array)
print_odd_numbers(array)
join(array)