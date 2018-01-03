# Implement strStr().

# Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

# Example 1:

# Input: haystack = "hello", needle = "ll"
# Output: 2
# Example 2:

# Input: haystack = "aaaaa", needle = "bba"
# Output: -1

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  i = 0
  l = needle.length 
  # p needle
  while i <= haystack.length - l
    return i if haystack[i...i+l] == needle
    i+=1
  end
  return -1  
end

# p str_str('hello', 'e')

