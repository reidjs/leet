# Given an integer, write a function to determine if it is a power of two.


# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  pow = 0
  while 2**pow <= n 
    return true if 2**pow == n
    pow += 1
  end 
  return false 
end

p is_power_of_two(8)