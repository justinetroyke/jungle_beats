require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/null_node'
require './lib/node'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_linked_list_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
    assert_instance_of NullNode, list.head
  end

  def test_append_adds_new_data
    list = LinkedList.new

    assert_equal "doop", list.append("doop")
  end


  def test_list_has_head_next_node_is_nil
    list = LinkedList.new
    list.append("doop")

    assert_instance_of NullNode, list.head.next_node
  end

  def test_count_gives_number_of_nodes
    list = LinkedList.new
    list.append("doop")

    assert_equal 1, list.count
  end

  def test_it_can_count_2_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal 2, list.count
  end

  def test_data_is_put_into_a_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "doop deep", list.to_string
  end

  def test_it_can_add_new_head_to_list
    list = LinkedList.new
    list.append("plop")
    list.append("suu")

    assert_equal "dop", list.prepend("dop")
  end
end
