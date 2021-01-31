class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    new = data.split
    new.each do |word|
      @list.append(word)
    end
    data
  end

  def count
    @list.count
  end
end
