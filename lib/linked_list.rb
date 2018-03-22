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
    elsif index == 0
      new_node = Node.new(sound)
      new_node.next_node = @head
      @head = new_node
    else
      new_index = index -1
      @head.insert(new_index, sound)
    end
  end

  def prepend(sound)
    insert(0, sound)
    sound
  end

  def find(index, number_of_strings)
    if count == 1
      @head.find(index, number_of_strings)
    elsif index == 0
      new_to_string = next_node.data
    else
      new_index = index -1
      @head.find(index, number_of_strings)
    end
  end
  #  [ z a, b, c, d, null_node
   # list.insert(1, z)
   # list => head.insert(3-1)
   # a => head { next_node.insert(2-1) }
   # next_node[b] => { next_node.insert(1-1)}
   # next_node[c] => { insert(0)}{}

  # [ a, b, c]
  # [ 3, 2, 1]
  # [ 0, 1, 2]

end
