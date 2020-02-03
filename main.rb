require 'pry'

require './math'
require './player'
require './turn'
require './question'

puts "Hello and welcome to the game."
puts "Please enter your name: "
player1 = Player.new(gets.chomp)
