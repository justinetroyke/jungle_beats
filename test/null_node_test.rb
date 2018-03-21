require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/null_node'
require 'pry'

class NullNodeTest < Minitest::Test

  def test_class_exists
    null_node = NullNode.new("last_node")

    assert_instance_of NullNode, null_node
  end

  def test_null_node_has_no_count
    null_node = NullNode.new("last_node")

    assert_equal 0, null_node.count
  end
end
