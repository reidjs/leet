class Node 
  def initialize(val)
    @val = val
  end 
  def next=(node)
    @next = node
  end 
  def next 
    @next
  end 
  def val 
    @val
  end 
end 


def delete_dupes(head)
  node = head 
  while node 
    if node.next && node.next.val === node.val 
      #delete the next node 
      node.next = node.next.next 
    else 
      node = node.next 
    end 
  end 
  return head 
end 

def read(head) 
  node = head
  while node
    p node.val
    node = node.next
  end 
end 
x = Node.new(5)
y = Node.new(6)
y2 = Node.new(6)
y3 = Node.new(6)
z = Node.new(7)

x.next = y 
y.next = y2
y2.next = y3
y3.next = z

read(x)
delete_dupes(x)
p "Deleted"
read(x)

