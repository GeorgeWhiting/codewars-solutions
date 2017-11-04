def simplify(poly)

  sign = []
  numbers = []
  letters = []
  output = ''
  equation = Hash.new(0)

  array = poly.split(/(?=[+-])/)
  array.each_with_index do |element,index|
    sign[index] = element.match(/([+-]?)/).to_s
    numbers[index] = element.match(/(\d+)/)
    if numbers[index] == nil
      numbers[index] = 1
    end
    letters[index] = element.match(/([a-z]+)/).to_s
  end
  letters.each_with_index do |element,index|
   letters[index] = element.chars.sort.join
  end

  value = sign.zip(numbers).map { |a| a.join('') }

  letters.each_with_index do |letter,index|
    equation[letter] += value[index].to_i
  end

  equation = Hash[ equation.sort_by { |key, value| [key.length,key] } ]
  equation = equation.each do |key,value|
    if value > 0
      equation[key]='+'+value.to_s
    end
  end

  equation.each do |key,value|
    if value == 0
    elsif value.to_s == '-1'
      output += '-' + key
    elsif value.to_s == '+1'
      output += '+' + key
    else
      output += value.to_s + key
    end
  end

  output[0] = '' if output[0] == '+'
output
end

puts simplify("-abc+3a+2ac")
