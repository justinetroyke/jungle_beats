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

  def insert(index, sound)
    if index == 0
      new_node = Node.new(sound)
      new_node.next_node = next_node
      self.next_node = new_node
    else
      new_index = index -1
      next_node.insert(new_index, sound)
    end
    sound 
  end
end
