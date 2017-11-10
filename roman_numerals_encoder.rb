def solution(input)
  output = ''
  output = output + 'M' * (input/1000)
  output = output + 'D' * (input%1000/500)
  output = output + 'C' * (input%500/100)
  output = output + 'L' * (input%100/50)
  output = output + 'X' * (input%50/10)
  output = output + 'V' * (input%10/5)
  output = output + 'I' * (input%5/1)

  if output.include? "IIII"
    output.sub!("IIII","IV")
  end
  if output.include? "VVVV"
    output.sub!("VVVV","VX")
  end
  if output.include? "VIV"
    output.sub!("VIV","IX")
  end
  if output.include? "XXXX"
    output.sub!("XXXX","XL")
  end
  if output.include? "LLLL"
    output.sub!("LLLL","LC")
  end
  if output.include? "LXL"
    output.sub!("LXL","XC")
  end
  if output.include? "CCCC"
    output.sub!("CCCC","CD")
  end
  if output.include? "DDDD"
    output.sub!("DDDD","DM")
  end
  if output.include? "DCD"
    output.sub!("DCD","CM")
  end
  output
end