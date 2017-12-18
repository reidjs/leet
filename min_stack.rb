# Instant lookup of minimum value in stack 
# require 'pry'
class MinStack
  def initialize 
    @stack = []
    @min = nil
  end 

  def pop 
    @stack.pop 
  end 

  def push(val)
    if (min.nil? || val < min)
      @min=val
    end 
    @stack.push(val)
  end 

  def min=(val)
    @min = val 
  end 

  def min 
    @min
  end 
end 

# x = MinStack.new
# p x 
# binding.pry 