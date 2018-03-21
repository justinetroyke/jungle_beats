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
end 
