require_relative './lib/board'
require_relative './lib/handel_colors'

test_board = Board.new

color_permutations_array = ["red", "green", "blue", "yellow"].permutation.to_a
color_permutations_array.each {|permutation| test_board.update_state(permutation, permutation[..1])}

test_board.display_board


