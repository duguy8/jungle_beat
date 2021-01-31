require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

RSpec.describe 'Jungle Beat' do
  describe 'It has this behavior' do
    it 'exists with a list attribute' do
      jb = JungleBeat.new
      expect(jb).to be_instance_of JungleBeat
      expect(jb.list).to be_instance_of LinkedList
      expect(jb.list.head).to be nil
    end
    it 'can append to the list' do
      jb = JungleBeat.new
      expected = jb.append("deep doo ditt")
      expect(expected).to eq("deep doo ditt")
      expect(jb.list.head.data).to eq("deep")
      expect(jb.list.head.next_node.data).to eq("doo")
      expected2 = jb.append("woo hoo shu")
      expect(expected2).to eq("woo hoo shu")
      expect(jb.count).to eq(6)
    end
  end
end
