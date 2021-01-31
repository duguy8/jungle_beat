require_relative 'jungle_beat'

class Message

  def initialize
    @welcome = welcome
    @input = input
  end

  def welcome
    p "~~~Input your jam!~~~"
    @input = gets.chomp
    new_jam
  end

  def new_jam
    beat = JungleBeat.new
    beat.append(@input)
    beat.play
    welcome
  end

  def self.start
    Message.new
  end
end
