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
$currentPos = 0
def search_insert(nums, target)
    #binary search 
    mid_idx = nums.length/2
    $currentPos += mid_idx
    # p $currentPos
    return mid_idx if nums[mid_idx] === target
    return $currentPos if nums.empty? #find idx one lower, one higher 
    if target > nums[mid_idx]
      search_insert(nums[(mid_idx + 1)..-1], target)
    else 
      $currentPos -= nums[0...mid_idx].length
      search_insert(nums[0...mid_idx], target)
    end 
end

p search_insert([0,1,2,3,4], 4)