# Given a sorted array, remove the duplicates in-place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# Example:

# Given nums = [1,1,2],

# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
# It doesn't matter what you leave beyond the new length.

def remove_duplicates(nums)
  return nums.length if nums.length < 2
  i = 1
  length = 1

  while !nums[i].nil?
    if nums[i-1] == nums[i]
      nums.delete_at(i)
      i -= 1
    else 
      length += 1
    end 
    i += 1
  end 
  length 
end 
arr = [1, 1, 2]
p remove_duplicates(arr)
p arr
arr2 = [1,2,3,3,3,4,4,5, 6]
p remove_duplicates(arr2)
p arr2