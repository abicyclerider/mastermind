require 'colorize'

class Board
  

  def initialize
    @board_state = []
    @pegs = []
  end

  def update_state(guess)
    @board_state.push(guess)
  end

  def display_board
    
  end
  
end
