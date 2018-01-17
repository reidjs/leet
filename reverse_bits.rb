# Reverse bits of a given 32 bits unsigned integer.

# For example, given input 43261596 (represented in binary as 00000010100101000001111010011100), return 964176192 (represented in binary as 00111001011110000010100101000000).

# Follow up:
# If this function is called many times, how would you optimize it?
def reverse_bits(n)
  bin = n.to_s(2)
  while bin.length < 32
    bin = "0" + bin
  end   
  bin.reverse.to_i(2)
end 

p reverse_bits(43261596)