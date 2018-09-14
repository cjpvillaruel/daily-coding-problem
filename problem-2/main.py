# Given the root to a binary tree, implement serialize(root), 
# which serializes the tree into a string, and deserialize(s), 
# which deserializes the string back into the tree.
class Node:
  def __init__(self, val, left=None, right=None):
      self.val = val
      self.left = left
      self.right = right


def deserialize(node):
  print "deserialize"

def serialize(node):
  print "serialize"

def append(serialized, val):
  serialized = serialized + str(val)

serialized = ""
def traverse(node, string):
  if node:
    string += str(node.val)
    print string
    traverse(node.left, string)
    traverse(node.right, string)
  # return string

node = Node(1, Node(2, Node(4), Node(5)), Node(3, right=Node(6), left=Node(7)))
traverse(node, "")
print serialized
  



 


# node = Node('root', Node('left', Node('left.left')), Node('right'))
# serialize(node)

# # preorder
#       1
#     2   5
#    3 4   6

#    preorder: 1 2 3 4 5 6
# assert deserialize(serialize(node)).left.left.val == 'left.left'