def longest_slide_down(pyramid)
  layer = pyramid.length
  while layer-2 >= 0
    pyramid[layer-2].each_with_index do |value,index|
      pyramid[layer-2][index] += max(pyramid[layer-1][index],pyramid[layer-1][index+1])
    end
    layer -= 1
  end
  pyramid[0][0]
end

def max (a,b)
  a>b ? a : b
end