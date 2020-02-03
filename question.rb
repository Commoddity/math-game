=begin
the Question will contain the questions that can be asked as strings as well as their correct answers
=end
class Question
  attr_reader :player, :player_answer
  
  def initialize(player)
    n1 = rand(10)
    n2 = rand(10)
    answer = n1 + n2
    
    puts "Player #{player}: What does #{n1} + #{n2} equal?"
    player_answer = gets.chomp.to_i
  
    if player_answer == answer
      self.correct(player)
    else
      self.incorrect(player)
    end
  end
  
  def correct(player)
    puts "Player #{player}: YES! You are correct.\n"
  end
  
  def incorrect(player)
    puts "Player #{player}: Seriously? No!\n"
  end
  
end