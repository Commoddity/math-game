=begin
The Turn will describe whose turn it currently is as well as print new turn
=end
class Turn
  attr_reader :current_player

  # @@turn_of_game = 0
  
  def initialize(turn_number)
    @current_player = turn_number % 2 + 1
    puts "----- TURN #{turn_number} -----"
    puts "Current Player: Player #{@current_player}"
    # @@turn_of_game += 1
  end

  def print_score(p1score, p2score, turn)
    puts "P1: #{p1score}/#{turn} vs P2: #{p2score}/#{turn}"
  end 
  
end