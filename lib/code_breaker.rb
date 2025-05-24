require_relative './handel_colors'

class CodeBreaker
  include HandelColors
  def initialize(code_length)
    @code_length = code_length
  end

  def get_guess
    loop do
      puts "Enter a valid guess:"
      guess=gets.chomp.split('')
      if validate_guess?(guess)
        return guess
      end
    end  
  end

  private 

  def validate_guess?(guess)
    valid_length?(guess) && valid_elements?(guess)
  end

  def valid_length?(guess)
    guess.length == @code_length
  end

  def valid_elements?(guess)
    guess.all? {|element| available_colors.include?(element)}
  end
end
