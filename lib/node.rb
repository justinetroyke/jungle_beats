class Node

attr_accessor :sound,
              :next_node

  def initialize(sound)
    @sound = sound
    @next_node = nil
  end

  def data
    @sound
  end
end
