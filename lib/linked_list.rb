class LinkedList

  attr_accessor :head

  def initialize
    @head = NullNode.new(self)
  end

  def append(sound)
    @head.append(sound)
    sound
  end

  def count
    @head.count
  end

  def next_node=(setter)
    @head = setter
  end

  def to_string
    @head.to_string
  end

end
