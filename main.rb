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
  turn = Turn.new
  player = turn.current_player
  question = Question.new(player)
  if question.correct_answer == true and player == 1
    player1.update_score
  end
  if question.correct_answer == true and player == 2
    player2.update_score
  end
  turn.print_score(player1.score, player2.score, turn)
  if i == turns - 1
    turn.print_outcome(player1.score, player2.score)
  end
  i += 1
end

