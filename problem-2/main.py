# Given the root to a binary tree, implement serialize(root), 
# which serializes the tree into a string, and deserialize(s), 
# which deserializes the string back into the tree.
class Node:
  def __init__(self, val, left=None, right=None):
      self.val = val
      self.left = left
      self.right = right


def deserialize(str):
  print "deserialize"
  print arr

def serialize(node):
  return traverse(node, "")


def traverse(node, serialized_str):
  if node:
    left = traverse(node.left, serialized_str)
    right = traverse(node.right, serialized_str)
    serialized_str = serialized_str + str(node.val) + '-' + left + right + "/"
  return serialized_str
    


node = Node(1, Node(2, Node(4), Node(5)), Node(3, right=Node(6), left=Node(7)))
print  serialize(node)
# print serialized
  



 


node = Node('root', Node('left', Node('left.left')), Node('right'))
# traverse_str("1-2-4-/5-//3-7-/6-///")
# print serialize(node)
#      1
#   2     3
# 4  5   7  6      1 2 4 5 3 7 6 


# # preorder
#       1
#     2   5
#    3 4   6

#    preorder: 1 2 3, 4, 5 6,
# assert deserialize(serialize(node)).left.left.val == 'left.left'