def determinant(input)
  tempmatrix = Array.new((input.length)-1) {Array.new((input.length)-1,0)}
  n = (input.length)
  det = 0
  if n < 1
    puts 'NO'
  elsif n == 1
    det = input[0][0]
    return det
  elsif n == 2
    det = (input[0][0]*input[1][1])-(input[0][1]*input[1][0])
    return det
  else
    for dummy_j in 0...n
      columnindicator_j = 0
      dummy_i = 0

      for i in 1...n
        for j in 0...n
          if(j==dummy_j)
            next
          end
          tempmatrix[dummy_i][columnindicator_j] = input [i][j]
          columnindicator_j += 1
          if(columnindicator_j == n-1)
            dummy_i += 1
            columnindicator_j = 0
          end
        end
      end
      det += ((-1)**(dummy_j))*(input[0][dummy_j])*(determinant(tempmatrix))
    end
    return det
  end
end