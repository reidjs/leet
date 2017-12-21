# Given a list, rotate the list to the right by k places, where k is non-negative.


# Example:

# Given 1->2->3->4->5->NULL and k = 2,

# return 4->5->1->2->3->NULL.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  k.times do 
    head = rotate_one(head)
  end 
  head 
end

def rotate_one(head)
  tail = last_node(head)
  tail.next = head
  tail #new head
  # last_node(head).next = nil
end 

def last_node(head) 
  node = head
  prev_node = node
  while node 
    # p node.val
    if node.next.nil?
      # p prev_node.val
      prev_node.next = nil
      return node 
    else 
      prev_node = node
      # p prev_node.val
    end     
    node = node.next
  end 
end 

def read_nodes(head)
  node = head
  while node
    p node.val
    node = node.next
  end 
end 

v = ListNode.new(1)
w = ListNode.new(2)
v.next = w
x = ListNode.new(3)
w.next = x
y = ListNode.new(4)
x.next = y
z = ListNode.new(5)
y.next = z
# rotate_one(v)
# rotate_one(z)

rotate_right(v, 3)
read_nodes(x)