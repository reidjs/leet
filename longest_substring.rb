# require 'pry'
#optimize: once we reach a certain length, we can 'jump' by that length (sliding window) to see 
#if there's anyhting that beats the current winner
#we don't need to check 

def longest_substring(s)
  return 0 if s.length == 0
  max_length = 1
  length = 1
  i = 0
  memoized = Hash.new 
  while i < s.length - 1
    h = Hash.new
    j = i + 1
    h[s.chars[i]] = true 
    while j < s.length 
      if h[s.chars[j]].nil?
        h[s.chars[j]] = true
        length += 1
      else 
        substring = s[i..j]
        memoized[substring] = length 
        break
      end 
      j += 1
    end 
    max_length = length if length > max_length 
    length = 1
    i += 1
  end 
  max_length
end 
p longest_substring("pnpohrvkclxtumzsptzfmtqpkgkjqzefmvwumteqeejaskuheumsndkalulb")
# binding.pry