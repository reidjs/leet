class LinkedList
  attr_reader :head, :tail
  def initialize
    @head = Node.new
    @tail = Node.new
  end 

  def insert(node)

  end 

end 

class Node 
  attr_accessor :next, :val
  @@last_node = 0
  def self.assign_val
    @@last_node += 1
  end 
  def initialize
    @val = Node.assign_val 
  end 
end 