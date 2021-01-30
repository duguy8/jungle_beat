class Node
  attr_reader :data,
              :next_node

  def initialize(data)
    @data = data
    @next_node = next_node
  end

  def add_next_node(new_node)
    @next_node = new_node
  end

  def next_data
    @next_node.data
  end

  def empty?
    @next_node.nil?
  end
end
