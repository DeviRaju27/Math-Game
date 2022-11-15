
class Player

  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lives_left
    @lives -= 1
  end

  def dead
    @lives == 0
  end

  def new_question

      new_question = Question.new()
      new_question.question(name)
      answer = $stdin.gets.chomp
      
      if new_question.check?(answer.to_i)
        puts "correct! lives left #{@name}: #{@lives}/3 "
      else 
        lives_left
        puts "wrong! lives left  #{@name}: #{@lives}/3"
       
      end
  end
end
