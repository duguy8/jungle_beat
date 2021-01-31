require './lib/node'
require './lib/linked_list'

RSpec.describe 'Linked List' do
  describe 'A Linked list can do these basic things' do
    it 'empty when nil' do
      link = LinkedList.new
      expect(link.empty?).to be true
    end
    it 'false when not nil' do
      link = LinkedList.new
      link.append("doot")
      expect(link.empty?).to be false
    end
  end
end
