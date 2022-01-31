require './question'
require './player'

# game class
class Game

  # initialize new game
  def initialize
    # initialize players
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @current_player = @p1
  end

  def set_current_player
    @current_player == @p1 ? @current_player = @p2 : @current_player = @p1
  end

  def start
    # game loop
    while @current_player.lives > 0
      # ask question
      question = Question.new

      # Player 1: What does 5 plus 3 equal?
      puts "#{@current_player.name}: #{question.ask}"
      # check answer
      response = gets.chomp.to_i
        # if correct respond "correct"
      if question.check_answer(response)
        puts "Yes! You are correct!"
        # if incorrect respond "incorrect"
      else
          # call player method to reduce lives by 1
        puts "Seriously? No!"
        @current_player.reduce_lives
      end
      #check active players lives count
      if @current_player.lives > 0
        # if > 0 -> list scores for both players
        puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
        puts "----- NEW TURN -----"
        self.set_current_player
      else
        # if = 0 -> active player lost
        winner = @current_player == @p1 ? @p2 : @p1
        puts "#{winner.name} wins with a score of #{winner.lives}/3"
      end

    end

  end

end