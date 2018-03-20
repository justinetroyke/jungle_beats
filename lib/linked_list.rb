class LinkedList

  attr_reader :head
  attr_accessor :count

  def initialize
    @head = nil
    @node = nil
    @count = 0
  end

  def append(new_data)
    if @head == nil
      @head = Node.new(new_data)
      @count += 1
    else
      @head.next_node = Node.new(new_data)
      @count += 1
    end
    new_data
  end
end
