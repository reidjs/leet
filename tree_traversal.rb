class Node 
  attr_reader :left, :right, :val, :parent
  attr_accessor :checked_left, :checked_right
  def initialize(val)
    @val = val 
  end 
  def left=(node)
    @left = node
    node.parent = self
  end 
  def right=(node)
    @right = node
    node.parent = self
  end 
end 

def pre_order_traverse(head)
  #pre order checks root node, then follows all left nodes, then all right nodes 
  node = head 
  prev_node = node
  if node.left 
    node = node.left 
  elsif node.right 
    node = node.right 
  else 

    # node = 
end 

def traverse_left(node)
  return nil unless node
  node = node.left 
  traverse_left(node)
end 

def traverse_right(node)
  return nil unless node
  node = node.right 
  traverse_right(node)
end 

def check_left_recur(node)
  if !node.left 
  
end 

f = Node.new('f')
b = Node.new('b')
a = Node.new('a')
d = Node.new('d')
c = Node.new('c')
e = Node.new('e')

g = Node.new('g')
i = Node.new('i')
h = Node.new('h')

f.left = b 
b.left = a
b.right = d 
d.left = c  
d.right = e

f.right = g 
g.right = i 
i.left = h 


