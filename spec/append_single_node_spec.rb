require './lib/node'
require './lib/linked_list'

RSpec.describe 'Linked List' do
  describe 'A Linked list can do these functions' do
    it 'should exist' do
      list = LinkedList.new
      expect(list).to be_instance_of LinkedList
    end

    it 'should have a head' do
      list = LinkedList.new
      expect(list.head).to be_nil
    end

    it 'should be able to append' do
      list = LinkedList.new
      expect(list.append("doop")).to eq("doop")
    end

    it 'next node should be nil' do
      list = LinkedList.new
      expect(list.head.next_node).to be_nil
    end

    it 'should have a count of 1' do
      list = LinkedList.new
      expect(list.count).to eq(1)
    end

    it 'should be able to be converted to a string' do
      list = LinkedList.new
      expect(list.to_string).to eq("doop")
    end
  end
end
