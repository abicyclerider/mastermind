module HandelColors
  def color_string_to_symbol(color_string)
    color_map = {
      "red" => :red,
      "green" => :green,
      "blue" => :blue,
      "yellow" => :yellow,
      "magenta" => :magenta,
      "cyan" => :cyan,
      "white" => :white,
      "black" => :black
    }
    color_map[color_string]
  end

  def print_color_row(color_array, width = 22)
    color_array.each do | color | 
      color_symbol = color_string_to_symbol(color)
      print color.colorize(:color => color_symbol).center(width)
    end
    puts
  end
end
