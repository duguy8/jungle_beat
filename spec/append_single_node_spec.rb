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
      expect(list.append("doop")).to eq(list.head.data)
    end

    it 'next node should be nil' do
      list = LinkedList.new
      list.append("doop")
      expect(list.head.next_node).to be_nil
    end

    it 'should have a count of 1' do
      list = LinkedList.new
      list.append("doop")
      expect(list.count).to eq(1)
    end

    it 'should be able to be converted to a string' do
      list = LinkedList.new
      list.append("doop")
      expect(list.to_string).to eq("doop")
    end

    it 'should be able to have multiple nodes' do
      list = LinkedList.new
      list.append("doop")
      expect(list.head).to be_instance_of Node
      expect(list.head.next_node).to be_nil
      list.append("deep")
      expect(list.head.next_node).to be_instance_of Node
      expect(list.head.next_node.data).to eq("deep")
      expect(list.count).to eq(2)
      expect(list.to_string).to eq("doop deep")
    end
  end
end
