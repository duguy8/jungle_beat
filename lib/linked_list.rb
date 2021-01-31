class LinkedList
  attr_reader :head

  def initialize
    @head = head
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
    case
    when @head.is_a?(Node) &&
      @head.empty?
      1
    when @head.is_a?(Node) &&
      @head.next_node.is_a?(Node)
      2
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
end
