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

  def test_insert_enters_at_index_0
    list = LinkedList.new
    list.insert(0, "boop")

    assert_equal 1, list.count
    assert_equal "boop", list.to_string
  end

  def test_insert_enters_at_index_0_with_exisitng_node
    list = LinkedList.new
    list.insert(0, "boop")
    list.insert(0, "doop")

    assert_equal 2, list.count
    assert_equal "doop boop", list.to_string
  end

  def test_inesrt_method_for_index_1
    list = LinkedList.new
    list.append("dop")
    list.append("plop")
    list.append("suu")

    assert_equal "woo", list.insert(1, "woo")
  end

  def test_that_insert_returns_the_correct_string
    list = LinkedList.new
    list.append("dop")
    list.append("plop")
    list.append("suu")
    list.insert(1, "woo")

    assert_equal "dop woo plop suu", list.to_string
  end
  def test_it_can_add_new_head_to_list
    list = LinkedList.new
    list.append("plop")
    list.append("suu")

    assert_equal "dop", list.prepend("dop")
  end

  def test_count_after_prepending
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    assert_equal 3, list.count
    assert_equal "dop plop suu", list.to_string
  end

  def test_find_returns_string_at_that_index_0
    list = LinkedList.new
    list.append("deep")

    assert_equal "deep", list.find(0, 1)
  end

  def test_find_returns_string_at_index_with_3_sounds
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    assert_equal "shi", list.find(2, 1)
  end
end
