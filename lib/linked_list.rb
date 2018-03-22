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

  def insert(index, sound)
    if count == 0
      append(sound)
    else if
      @head.insert(index, sound)
    end
    #
  end

  def prepend(sound)
    insert(0, sound)
    sound
  end
  # [ a, b, c]
  # [ 3, 2, 1]
  # [ 0, 1, 2]

end
