# create player
class Player
  attr_accessor :name, :lives
  # intialize new player
  def initialize(name)
    # name
    @name = name
    # lives
    @lives = 3
  end

  # method for loosing a life
  def reduce_lives
    @lives -= 1
  end

end