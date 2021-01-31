require './lib/node'

RSpec.describe 'Node Basics' do
  describe 'Simple node can perform these functions' do
    it 'has a slot for data' do
      node = Node.new("plop")
      expect(node.data).to eq("plop")
    end
    it 'has a slot for a next node' do
      node = Node.new("plop")
      expect(node.next_node).to be_nil
    end

    it 'returns true if tail is nil' do
      node = Node.new("plop")
      expect(node.tail?).to be true
    end

    it 'can change if another node is added' do
      node = Node.new("plop")
      data = "doot"
      node.add_next_node(data)
      expected = node.next_node
      expect(data).to eq(expected)
    end
  end
end
