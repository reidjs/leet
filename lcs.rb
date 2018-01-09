def lcs(arr)
  current_sum = 0
  max = arr.first || 0  # return 0 for empty array

  arr.each do |el|
      current_sum += el
      max = current_sum if max < current_sum
      current_sum = 0 if current_sum < 0
  end

  max
end

p lcs([4,-10,5,1,3,-9,5])