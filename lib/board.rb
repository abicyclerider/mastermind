# frozen_string_literal: true

require 'colorize'
require_relative 'handle_colors'
# Class for display of matermind
class Board
  include HandleColors

  def initialize
    @board_state = []
  end

  def update_state(guess, pegs)
    @board_state.push([guess, pegs])
  end

  def display_board
    @board_state.each do |state|
      print_color_row(state[0])
      print '||'
      print_color_row(state[1])
      puts
    end
  end
end
