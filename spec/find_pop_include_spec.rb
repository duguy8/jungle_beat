require './lib/node'
require './lib/linked_list'

RSpec.describe 'Linked List' do
  describe 'Find, Pop, Includes' do
    it 'can find a single element' do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")
      expected = "deep woo shi shu blop"
      expect(list.to_string).to eq(expected)
      expected2 = "shi"
      expect(list.find(2, 1)).to eq(expected2)
      expected3 = "woo shi shu"
      expect(list.find(1, 3)).to eq(expected3)
    end
    it 'can see if an element is included' do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      expect(list.includes?("deep")).to be true
      expect(list.includes?("dep")).to be false
    end
    
  end
end
