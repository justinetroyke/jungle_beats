class Node

attr_accessor :next_node


  def initialize(sound)
    @sound = sound
    @next_node = NullNode.new(self)
  end

  def count
    1 + next_node.count
  end

  def append(sound)
    @next_node.append(sound)
  end

end
