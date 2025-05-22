module HandleColors
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
end
