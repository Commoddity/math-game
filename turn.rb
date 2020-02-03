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