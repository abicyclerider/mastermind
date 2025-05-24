require_relative './board'
require_relative './code_maker'
require_relative './code_breaker'

class Game
  CODE_LENGTH = 4
  BOARD_LENGTH = 10
  RED_PIN = "1"
  WHITE_PIN = "7"

  def initialize
    @code_maker = CodeMaker.new(CODE_LENGTH)
    @code_breaker = CodeBreaker.new(CODE_LENGTH)
    @board = Board.new
    @num_guesses = 0
  end

  def play_game
    loop do
      red_pegs = play_round
      if red_pegs == CODE_LENGTH
        puts "YAY winning guess!"
        break
      end
      if @num_guesses > BOARD_LENGTH - 1
        puts "Out of guesses. Game over"
        break
      end
    end  
  end 

  private
  def generate_pegs(red_pegs, white_pegs)
    pegs = []
    red_pegs.times {pegs.push(RED_PIN)}
    white_pegs.times {pegs.push(WHITE_PIN)}
    pegs
  end

  def play_round
    guess = @code_breaker.get_guess
    red_pins = @code_maker.check_exact_match(guess)
    white_pins = @code_maker.check_color_match(guess) - red_pins
    pegs = generate_pegs(red_pins, white_pins)
    @board.update_state(guess, pegs)
    @board.display_board    
    @num_guesses += 1
    red_pins
  end

end
