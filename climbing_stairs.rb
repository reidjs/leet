# You are climbing a stair case. It takes n steps to reach to the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

# Note: Given n will be a positive integer.


# Example 1:

# Input: 2
# Output:  2
# Explanation:  There are two ways to climb to the top.

# 1. 1 step + 1 step
# 2. 2 steps
# Example 2:

# Input: 3
# Output:  3
# Explanation:  There are three ways to climb to the top.

# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step

#n is number of steps remaining
def climb_stairs(n)
  # return count if n == 0 #base case 0 steps 
  # return count + 1 if n == 1 #base case 1 step remaining
  # #try both 
  # count += 1
  # climb_stairs(n-1, count) + climb_stairs(n-2, count)    
end 

# p climb_stairs(3)

class BinaryTreeStairs

  def initialize(height)
    @height = height 
    # @root = Node.new(height)
    # root.left = 1
    # root.right = 2
  end 

  def sum_recur(node)
    return node.val if !node.parent 
    node.val + sum_recur(node.parent)
  end 

  def add_children(node)
    if sum_recur(node) + 1 < @height 
      node.left = 1 
    end 
    if sum_recur(node) + 2 < @height 
      node.right = 2
    end 
  end 

  def add_left_child(node)
    
  end 

  #count nodes that do not have children 
  def count_childless_nodes(root)
    
  end 



end 

#returns sum of node reading up the tree 
def sum_at_node(node)
  sum = node.val
  node = node.parent 
  while node
    sum += node.val 
    node = node.parent 
  end 
  sum 
end



class Node 
  attr_accessor :val, :parent
  attr_reader :left, :right
  def initialize(val)
    @val = val
  end 

  def left=(val)
    @left = Node.new(val)
    @left.parent = self
  end 

  def right=(val)
    @right = Node.new(val)
    @right.parent = self
  end 

  def read
    p @left.val if @left 
    p @right.val if @right 
    p @parent.val if @parent
  end 
end 


x = Node.new(3)
x.left=1
x.right=2
x.read

y = x.left
y.left=8

y.read
p sum_at_node(y.left)

p sum_recur(y.left)

