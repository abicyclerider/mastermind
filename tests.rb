# frozen_string_literal: true

require_relative './lib/board'
require_relative './lib/handel_colors'
require_relative './lib/code_maker'
require_relative './lib/code_breaker'
require_relative './lib/game'

include HandelColors

# test_board = Board.new
# color_permutations_array = ["1", "2", "3", "4"].permutation.to_a
# color_permutations_array.each {|permutation| test_board.update_state(permutation, permutation[..1])}
#
# test_board.display_board
#
# test_code_maker = CodeMaker.new
#
# colors = HandelColors.available_colors
#
# loop do
#   guess = colors.sample(4)
#   p guess
#   puts test_code_maker.check_color_match(guess)
#   matches = test_code_maker.check_exact_match(guess)
#   if matches == 4
#     p guess
#     break
#   end
# end

# test_code_breaker = CodeBreaker.new
# guess = test_code_breaker.get_guess
# puts guess

test_game = Game.new
test_game.play_game
