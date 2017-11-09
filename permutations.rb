def permutations(string)
  string.chars.to_a.permutation.map(&:join).uniq
end
