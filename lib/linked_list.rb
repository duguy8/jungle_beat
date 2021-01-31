class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def empty?
    head.nil?
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end

  def insert(index, data)
    # require "pry"; binding.pry
    node = Node.new(data)
    prior_node = node_at(@head, index)
    next_node = node_at(@head, index)
    prior_node.add_next_node(node)
    node.add_next_node(next_node)
    return node

    # current = @head
    # (index - 1).times do |node|
    #   current = current.next_node
    # end
    #
    # shifted = current.next_node
    # current.add_next_node(Node.new(data))
  end

  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
    else
      copy = @head
      @head = Node.new(data)
      @head.add_next_node(copy)
    end
  end

  def append(data)
    if head.nil?
      @head = Node.new(data)
    else
      @head.add_next_node(Node.new(data))
    end
    data
  end

  def count
    counter = 0
    current = @head
    if @head.next_node.is_a?(Node)
      loop do
        counter += 1
        break if current.next_node.nil?
        current = current.next_node
      end
      counter
    else
      1
    end
  end

  def to_string
    expected = ""
    current = @head
    if @head.next_node.is_a?(Node)
      loop do
        expected += "#{current.data} "
        break if current.next_node.nil?
        current = current.next_node
      end
      expected.chop
    else
      @head.data
    end
  end

  private

  def node_at(node, index, counter=0)
    return node if index == counter
    node_at(node.next_node,index,counter +=1)
  end
end
