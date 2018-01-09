def matrix(arr, lower, bottom)
  sum = 0
  l1, l2 = lower
  b1, b2 = bottom
  for i in l1..b1 
    for j in l2..b2 
      sum += arr[i][j]
    end 
  end 
  sum
end 
arr = [[0,2,3], [4,5,2], [5,2,1]]
p matrix(arr, [0,0], [1,1])