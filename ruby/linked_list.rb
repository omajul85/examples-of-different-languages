class Node
  attr_accessor :data, :next
  def initialize(data, n = nil)
    @data = data
    @next = n
  end
end

def get_nth(node,index)
  raise Exception.new("Nil linked list should throw error.") if node.nil?
  if index.between?(0, countNodes(node)-1)
    eval("node" + (".next" * index))
  else
    raise Exception.new("Invalid index value should throw error.")
  end
end

def countNodes(list, count = 1)
    return count if list.next == nil
    countNodes(list.next, count += 1)
end