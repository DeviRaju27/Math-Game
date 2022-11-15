
class Game

  def initialize()
    @name
    @player_1 = Player.new("player 1")
    @player_2 = Player.new("player 2")
  end

  def start_game
    puts "welcome #{@player_1.name} &  #{@player_2.name}"
    play
  end


  def score
    if @player_1.dead
      puts "-----Winner is player 2-----"
      exit(0)
    elsif @player_2.dead
      puts "-----Winner is player 1-----"
      exit(0)
    end
  end

  def play
    @player_1.new_question
    score
    @player_2.new_question
    score
    puts "---------------"
    puts "Lives left - player 1: #{@player_1.lives}/3 vs player 2: #{@player_2.lives}/3"
    puts "---------------"
    play
  end
end



