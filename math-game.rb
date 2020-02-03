=begin
  Math should contain all of the logic for performing the various math operations.
=end
module Math

  def add(n1, n2)
    n1 + n2
  end

end

=begin
Player should contain the initialization for each player and attributes such as name and score
=end
class Player
  @@player_id = 1

  attr_reader :name, :player_id

  def initialize(name)
    @player_id = @@player_id
    @name = name
    @score = 0
    @@player_id += 1
  end

end

=begin
The Turn will describe whose turn it currently is as well as print new turn
=end
class Turn
  attr_reader :current_player

  @@turn_of_game = 0
  
  def initialize
    current_player = @@turn_of_game % 2 + 1
    puts "----- NEW TURN -----"
    puts "Current Player: Player #{current_player}"
    @@turn_of_game += 1
  end

end

=begin
the Question will contain the questions that can be asked as strings as well as their correct answers
=end
class Question
  include Math

  
end

pascal = Player.new("pascal")

puts pascal.name
puts pascal.player_id

john = Player.new("john")

puts john.name
puts john.player_id

turn = Turn.new
turn = Turn.new
turn = Turn.new
turn = Turn.new
turn = Turn.new
turn = Turn.new
turn = Turn.new

puts turn.current_player