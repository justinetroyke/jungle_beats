require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require "./lib/null_node"
require "./lib/node"
require 'pry'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("plop")

    assert_instance_of Node, node
  end

  def test_data_can_be_entered
    node = Node.new("plop")

    assert_equal "plop", node.sound
  end

  def test_that_next_node_exists_with_nil
    node = Node.new("plop")

    assert_instance_of NullNode, node.next_node
  end

  def test_it_can_count_itself
    skip
    node = Node.new("plop")

    assert_equal 1, node.count
  end
end
