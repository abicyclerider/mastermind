require_relative './lib/board'
require_relative './lib/handel_colors'

test_obj = Object.new
test_obj.extend(HandelColors)

color_permutations_array = ["red", "green", "blue", "yellow", "magenta", "cyan", "white", "black"].permutation.to_a
color_permutations_array.each {|permutation| test_obj.print_color_row(permutation)}


