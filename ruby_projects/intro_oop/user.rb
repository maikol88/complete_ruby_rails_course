# class user, here is some documentation
# more stuff coing here
class User
  attr_accessor :name, :email

  def initialize(name, email)
    # instance variable, exists while object exists within the object 'instance'
    @name = name
    @email = email
  end

  def run
    puts "#{@name} is running"
  end
end

=begin
#  def name
#    puts 'Name is: ' + @name.to_s
#  end

#  def name=(name)
#    @name = name
#    puts "Name changed to #{@name}"
#  end
=end

# creates object and prints it
user1 = User.new('Miguel', 'miguel@gmail.com')
user2 = User.new('Kevin', 'Kevin@gmail.com')
user3 = User.new('Pedro', 'Pedro@gmail.com')
puts user1, user2, user3

user1.run
puts "User 2 name is #{user2.name} and email is #{user2.email}"
user3.name = 'Carlitos'
puts "User 3 changed his name to #{user3.name}"

# print all the object ancestors
# puts User.ancestors
