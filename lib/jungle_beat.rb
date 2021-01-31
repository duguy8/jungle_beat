class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def play
    jam = @list.to_string
    `say -r 500 -v Boing #{jam}`
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
