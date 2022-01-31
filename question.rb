# Create new question class
class Question
  attr_accessor :solution
# Initialize new question
  def initialize
  # generate 2 random numbers between 1 and 20
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  # add two random numbers
    @solution = @num1 + @num2
  end

  # Ask question
  def ask
    puts "What does #{@num1} plus #{@num2} equal?"
  end
  
  # Check answer
  def check_answer(response)
    @solution == response
  end
  
end