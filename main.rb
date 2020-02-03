require 'pry'

require './math'
require './player'
require './turn'
require './question'

puts "Hello and welcome to the game."

puts "Player 1: please enter your name: "
player1 = Player.new(gets.chomp)

puts "Player 2: please enter your name: "
player2 = Player.new(gets.chomp)

puts "How many turns would you like to play for?"
turns = (gets.chomp).to_i * 2
puts turns

i = 0

while i < turns
  turn = Turn.new((i / 2).ceil + 1)
  player = turn.current_player
  question = Question.new(player)
  i += 1
end