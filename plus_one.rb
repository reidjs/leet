# Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.

# You may assume the integer do not contain any leading zero, except the number 0 itself.

# The digits are stored such that the most significant digit is at the head of the list.

#e.g., [3, 9, 9] --> [4, 0, 0]
#[9, 9] --> [1, 0, 0]

#super naive
#iterate over digits
#concat into a number 
#add one to number 
#turn number to string 
#

#add one to last digit. If the value is less than 10, return array.
#otherwise, og to next digit. if you 

def plus_one(digits)
  (digits.length-1).downto(0) do |idx|
    digits[idx] += 1
    return digits if digits[idx] < 10
    digits[idx] -= 10
    digits.unshift(1) if idx == 0
  end 
  digits
end 

p plus_one([1,9])