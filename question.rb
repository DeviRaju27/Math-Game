class Question
  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def question(name)
    puts "#{name}:What is #{@num1} + #{@num2}"
  end

  def check?(answer)
     @sum == answer
  end

end