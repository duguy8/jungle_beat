require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'
require './lib/message'

RSpec.describe 'Messages' do
  describe 'Messages instantiated with a jungle beat' do
    it 'exists' do
      expected = Message.start
      expect(expected).to be_instance_of Message
    end
  end
end
