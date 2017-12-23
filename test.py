# Given a sorted linked list, delete all duplicates such that each element appear only once.

# For example,
# Given 1->1->2, return 1->2.
# Given 1->1->2->3->3, return 1->2->3.


def hello():
  print "hello"

class Node:
  def __init__(self, val):
    self.val = val
  def next(self, node):
    self.next = node
  def next(self):
    print "here"
    if (self.next):
      return self.next
    else:
      return false

def readList(head):
  node = head
  # print node 
  while (node):
    print "hi", node.val 
    node = node.next()
    print node 





x = Node(5)
y = Node(10)
# print x.val
readList(x)
x.next(y)
# print x.next

