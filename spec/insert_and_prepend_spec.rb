require './lib/node'
require './lib/linked_list'

RSpec.describe 'Linked List' do
  describe 'Insert & Prepend' do
    it 'should be able to prepend to beginning of the list/insert' do
      list = LinkedList.new
      list.append("plop")
      expect(list.to_string).to eq("plop")
      list.append("suu")
      list.prepend("dop")
      expect(list.to_string).to eq("dop plop suu")
      expect(list.count).to eq(3)
      list.insert(1, "woo")
      expect(list.to_string).to eq("dop woo plop suu")
    end
  end
end
