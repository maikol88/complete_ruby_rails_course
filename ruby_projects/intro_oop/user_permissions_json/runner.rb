require 'pp'
require_relative 'user'

user = User.new 'miguel.saldana@gmail.com', 'Miguel'
pp user
user.save