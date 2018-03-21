class LinkedList

  attr_accessor :head

  def initialize
    @head = NullNode.new(self)
  end

  def append(sound)
    @head.append(sound)
    sound
  end


end
