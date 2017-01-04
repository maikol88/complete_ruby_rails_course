# Inheritance, modules, class methods
module Identifiable
  puts "Im a module"
end

class User
  include Identifiable
  attr_accessor :name, :email

  def initialize(name, email)
    # instance variable, exists while object exists within the object 'instance'
    @name = name
    @email = email
  end

  def run
    puts "#{@name} is running"
  end

  def self.id
    puts "Im a class method"
  end
end


class Buyer < User
  def run
    puts "#{@name} is a #{self.class}, #{self.class}s dont like to run."
  end
end

class Seller < User

end

class Admin < User

end

buyer1 = Buyer.new('Mario Bros', 'mario@gmail.com')
seller1 = Seller.new('Luigi Bros', 'luigi@gmail.com')
admin1 = Seller.new('Peach', 'Princess@gmail.com')

buyer1.run
seller1.run
admin1.run

# class method, called only by class and not objects
User.id

# module
admin1.identifiable