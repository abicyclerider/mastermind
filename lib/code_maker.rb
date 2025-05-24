# frozen_string_literal: true

require_relative './handel_colors'
# Class to generate code and evaluate guesses
class CodeMaker
  include HandelColors
  def initialize(code_length)
    # Samples colors without replacement so no repeats
    @secret_code = available_colors.sample(code_length)
  end

  def check_color_match(guess)
    @secret_code.sum { |element| [@secret_code.count(element), guess.count(element)].min }
  end

  def check_exact_match(guess)
    @secret_code.zip(guess).count { |a, b| a == b }
  end
end
