# Write a function to find the longest common prefix string amongst an array of strings.


# /**
#  * @param {string[]} strs
#  * @return {string}
#  */
# var longestCommonPrefix = function(strs) {
    
# };

#ex [keyboard, keys, keytar] -> "key"
#prefix is empty string 
#find shortest string 
#for every character in string 
#check the three strings at the index i for 

#returns shortest word in array 
def shortest(arr)
  short_idx = 0 
  short_length = nil
  arr.each_with_index do |word, idx|
    if short_length.nil? || word.length < short_length
      short_length = word.length 
      short_idx = idx
    end 
  end 
  arr[short_idx]
end 

def longest_common_prefix(arr)
  shortest_word = shortest(arr)
  prefix = ""
  i = 0
  while i < shortest_word.length 
    arr.each do |word|
      return prefix if word[i] != shortest_word[i]
    end 
    prefix += shortest_word[i]
    i += 1
  end 
  prefix 
end 

p longest_common_prefix(['keyboard', 'aeys', 'keytarr'])