# Given a sorted array and a target value, return the index if the target 
# is found. If not, return the index where it would be if it were inserted in order.

# You may assume no duplicates in the array.

# Example 1:

# Input: [1,3,5,6], 5
# Output: 2
# Example 2:

# Input: [1,3,5,6], 2
# Output: 1
# Example 3:

# Input: [1,3,5,6], 7
# Output: 4
# Example 1:

# Input: [1,3,5,6], 0
# Output: 0

#needs to keep track of current position 
#find index of num less than
#find index of num greater than 
#NO DUPES
def narrow_down(nums, target, idx=0)
  return idx if nums.empty? || target <= nums[0]
  return idx+nums.length if target > nums[-1] 
  p nums
  narrow_down(nums[1...-1], idx+2)
  
end 

def search_insert(nums, target)
   p narrow_down(nums, target)
end

p search_insert([0,1,2,3,4], 4)