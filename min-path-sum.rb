# Given a m x n grid filled with non-negative numbers, find a path 
#from top left to bottom right which minimizes the sum of all numbers along its path.

# Note: You can only move either down or right at any point in time.

# Example 1:
# [[1,3,1],
#  [1,5,1],
#  [4,2,1]]
# Given the above grid map, return 7. Because the path 1→3→1→1→1 minimizes the sum.

require 'set'

class Queue 
  attr_reader :store 
  def initialize 
    @store = []
    @length = 0
  end 

  def dequeue
    return nil if @length == 0
    @length -= 1
    @store.shift 
  end 

  def dequeueSmallestDist(distances)

  end 

  def enqueue(val)
    @length += 1
    @store << val
  end 

  def length 
    @length 
  end 

  def first
    @store[0]
  end 

  def empty 
    @store.empty?
  end 
end 
#There is already a ruby module named set 
# class Set 
#   attr_reader :store 
#   def initialize 
#     @store = {}
#     @length = 0
#   end 

#   def add(item)
#     return nil if @store[item]
#     @length += 1
#     @store[item] = true 
#   end

#   def remove(item)
#     return nil unless @store[item]
#     @store.delete(item) 
#   end 

#   def length 
#     @length 
#   end 
# end 

class Graph 
  def initialize(rows)
    @spt = Set[] #shortest path tree set 
    #nodes are represented as [x, y, weight] in
    @nodes = []
    @dist = []
    @grid = rows
    rows.each_with_index do |row, x|
      row.each_with_index do |weight, y|
        @nodes.push([x, y, weight])
        @dist.push(Float::INFINITY)
      end 
    end 
    # p @q.store
    @source = @nodes[0] #source node to calculate distances
    @dist[0] = 0 #distance to source node is by definition zero 
    p @dist
    # @source_node = source_node
    # add_node(@source_node)
  end 

  def add_node(node)
    # @nodes.push(node)
  end 
  #unidirectional connections only. node1 -> node2
  def connect_nodes(node1, node2)
    # node1.connect(node2)
  end 

  def minimumDistanceValue
    @dist.min
  end 

  def neighbors(x, y)
    n = []
    right = right(x,y)
    down = down(x, y)
    n.push(right) unless right.nil? 
    n.push(down) unless down.nil? 
    n
  end 

  def right(x, y) 
    grid[x+1][y]
  end 

  def down(x, y)
    grid[x][y+1]
  end 

  def djikstra
    @spt.add(minimumDistanceValue)
    # while @spt.length < @dist.length
    #   @spt
    # end 
  end 
end 

class Node 
  attr_reader :adj
  def initialize(val)
    @val = val #val is the weight of the node 
    @adj = []
  end 

  def connect(node)
    @adj.push(node)
  end 
end 

Graph.new([[1,3,1],[1,5,1],[4,2,1]])

