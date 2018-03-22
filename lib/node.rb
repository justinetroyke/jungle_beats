class Node

attr_accessor :next_node
attr_reader :sound

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
  def to_string(formatting = '')
    formatting + sound + next_node.to_string(' ')
  end

  def prepend(sound)
    self + next_node.prepend
  end
end
