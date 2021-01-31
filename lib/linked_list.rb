class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def includes?(data)
    find_by_name(head,data)
  end

  def find_by_name(node, data)
    return true if node.data == data
    return false if node.tail?
    find_by_name(node.next_node, data)
  end

  def head_data(found = head)
    found.data
  end

  def concat(data, node)
    "#{data}".concat(" #{node.data}")
  end

  def concat_data(node, data, stop = nil, counter = 1)
    return concat(data, node) if node.tail? || stop == counter
    concat_data(node.next_node, concat(data, node), stop, counter += 1)
  end

  def find(index, elements)
    found = position(head, index)
    data = head_data(found)
    return data if elements == 1
    concat_data(found.next_node, data, elements -= 1)
  end

  def new_node(data)
    Node.new(data)
  end

  def empty?
    head.nil?
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end

  def insert(index, data)
    node = new_node(data)
    prior_node = position(head, index - 1)
    next_node = position(head, index)
    prior_node.add_next_node(node)
    node.add_next_node(next_node)
    return node
  end

  def prepend(data)
    node = new_node(data)
    node.add_next_node(@head)
    @head = node
  end

  def append(data)
    if empty?
      @head = new_node(data)
    else
      last_node(@head).add_next_node(new_node(data))
    end
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

  def position(node, index, counter=0)
    return node if index == counter
    position(node.next_node, index, counter += 1)
  end
end
