
#return if length <= 1
#select pivot (first el)
#partition array around pivot
#recurse on left and right 
#pathological case: we get an array that's already sorted. n level deep tree O(n^2)
#to avoid this issue, pick a random pivot
def quicksort(arr, s_idx = 0, e_idx = arr.length)
  if s_idx == e_idx 

  end 
  pivot_idx = 0
  barrier_idx = 0
  i = 1 
  while i < arr.length 
    if arr[i] < arr[pivot_idx]
      barrier_idx += 1
    else 
      #swap 
    end 
    i+=1
  end 
end 
input = [4,3,10,7,2,8,1]