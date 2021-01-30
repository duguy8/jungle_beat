class LinkedList
  attr_reader :head

  def initialize
    @head = head
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
    @head.data.concat(" #{@head.next_data}") unless @head.empty?
    @head.data
  end
end
