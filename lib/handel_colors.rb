module HandelColors
  COLOR_MAP = {
      "red" => :red,
      "green" => :green,
      "blue" => :blue,
      "yellow" => :yellow,
      "magenta" => :magenta,
      "cyan" => :cyan,
      "white" => :white,
      "black" => :black
}.freeze

  def available_colors
    COLOR_MAP.keys
  end

  def color_string_to_symbol(color_string)
    COLOR_MAP[color_string]
  end

  def print_color_row(color_array, width = 22)
    color_array.each do | color | 
      color_symbol = color_string_to_symbol(color)
      print color.colorize(:color => color_symbol).center(width)
    end
  end
end
