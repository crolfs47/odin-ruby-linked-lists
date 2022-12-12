class LinkedList
  def initialize
    @linked_list = []
    append('append node')
    prepend('prepend node')
  end

  # adds a new node containing value to the end of the list
  def append(value)
    new_node = Node.new(value)
    @linked_list.push(new_node)
    p @linked_list
  end
  
  # adds a new node containing value to the start of a list
  def prepend(value)
    new_node = Node.new(value)
    @linked_list.unshift(new_node)
    p @linked_list
  end

  # returns the total number of nodes in the list
  def size
  end

  # returns the first node in the list
  def head
  end

  # returns the last node in the list
  def tail
  end

  # returns the node at a given index
  def at(index)
  end

  # removes the last element from the list
  def pop
  end

  # returns true if the passed in value is in the list and otherwise returns false
  def contains?(value)
  end

  # returns the index of the node containing value, or nil if not found
  def find(value)
  end

  # represent your linked list objects as strings so you can print them out and view them in the console
  def to_s
  end

end

class Node
  def initialize(value)
    @value = value
    @next = nil
    p @value
    p @next
  end
end

LinkedList.new