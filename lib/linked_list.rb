class LinkedList

  attr_reader :head

  def initialize
    @head = nil
    @node = nil
  end

  def append(new_data)
    if @head == nil
      @head = Node.new(new_data)
    else
      @head.next_node = Node.new(new_data)
    end
    new_data
  end
end
