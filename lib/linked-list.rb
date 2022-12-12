require_relative 'node'

class LinkedList
  attr_reader :head, :tail
  
  def initialize
    # @linked_list = []
    @head = nil
    @tail = nil
    append('Node A')
    prepend('Node B')
    append('Node C')
    append('Node D')
    p "head is #{head.value}, points to #{head.next_node.value}"
    p "tail is #{tail.value}, points to #{tail.next_node}"
    p "list length is #{size}"
    p "node at index 3 is #{at(3)}"
  end

  # adds a new node containing value to the end of the list
  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
    end
    @tail = new_node
  end
  
  # adds a new node containing value to the start of a list
  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
    end
    @head = new_node
  end

  # returns the total number of nodes in the list
  def size
    count = 0
    node = @head
    until node.nil?
      count += 1
      node = node.next_node
    end
    count
  end

  # returns the first node in the list
  def head
    @head
  end

  # returns the last node in the list
  def tail
    @tail
  end

  # returns the node at a given index
  def at(index)
    i = 0
    node = @head
    while i < index
      node = node.next_node
      i += 1
    end
    node.value
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

LinkedList.new