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
  end
end
