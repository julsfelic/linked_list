require 'minitest'
require 'list'
require 'node'

class ListTest < Minitest::Test
  def setup
    @list = List.new
    @node = Node.new
    @node.add_element("Hi!")
  end

  def test_can_create_instances
    assert_instance_of List, @list
  end

  def test_returns_nil_for_head_if_there_is_no_nodes
    assert_nil @list.head
  end

  def test_can_add_a_node_to_an_empty_list
    assert @list.add_node(@node)
  end

  def test_head_points_to_the_only_node_added
    @list.add_node(@node)

    assert_equal @list.head, @node
  end
end
