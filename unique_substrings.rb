#from a string
#return all unique substrings
#two loops 

def unique_substrings(string)
  result = {string => true}
  i = 0
  while i < string.chars.length 
    j = i + 1 
    while j < string.chars.length 
      result[string[i...j]] = true 
      j += 1
    end 
    i += 1
  end 
  result.keys 
end 

p unique_substrings('hello')