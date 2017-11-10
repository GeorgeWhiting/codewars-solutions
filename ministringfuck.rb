def mini_string_fuck code
  cell_value = 0
  output = ''
  code.gsub!(/[^+.]/,'')
  code.chars.each do |command|
    if command == '+'
      cell_value += 1
      if cell_value > 255
        cell_value = 0
      end
    end
    if command == '.'
      output += cell_value.chr
    end
  end
  output
end
