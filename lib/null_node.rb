
class NullNode

  attr_accessor :last_node

  def initialize(last_node)
    @last_node = last_node
  end

  def append(sound)
    @last_node.next_node = Node.new(sound)
  end

  def count
    0
  end

  def next_node
    self
  end
  
  def to_string(_formatting = '')
    ""
  end

end
