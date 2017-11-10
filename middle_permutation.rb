def middle_permutation(string)
  string = string.chars.sort.join('')
  return string if string.length <= 2

  if string.length.even?
    middle_index = ((string.length)/2)-1
    rest_of_string = string[0...middle_index]+string[middle_index+1..-1]
    return string[middle_index] + rest_of_string.reverse
  end

  if string.length.odd?
    middle_index = string.length/2
    rest_of_string = string[0...middle_index-1]+string[middle_index+1..-1]
    return string[middle_index] + string[middle_index-1] + rest_of_string.reverse
  end
end