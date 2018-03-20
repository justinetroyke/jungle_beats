require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_linked_list_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
    assert_nil list.head
  end

  def test_append_adds_new_data
    list = LinkedList.new

    assert_equal "doop", list.append("doop")
  end

  def test_list_has_head_next_node_is_nil
    list = LinkedList.new
    list.append("doop")

    assert_nil list.head.next_node
  end

  def test_count_gives_number_of_nodes
    list = LinkedList.new

    assert_equal 1, list.count
  end
end
