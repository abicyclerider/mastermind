require 'colorize'
require_relative 'handel_colors'

class Board
  include HandelColors

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
