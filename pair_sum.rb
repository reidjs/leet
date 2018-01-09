#array of integers
#find all pairs of sums that sum to value k
#return array of arrays in min max order 

#use two hashes 

def pair_sum(arr, k)
  hash = {}
  result = []
  i = 0
  while i < arr.length 
    hash[arr[i]] = i #keep track of index 
    i += 1
  end 
  arr.each_with_index do |el, idx|
    diff = k - el 
    if hash[diff] && idx < hash[diff]
      if diff < el 
        result << [diff, el]
      else 
        result << [el, diff]
      end 
    end 
  end 
  result 
end 

p pair_sum([2, 3, 6, 9, 7, 8, 5, 3, 5], 8)

  