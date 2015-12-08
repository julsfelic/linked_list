require 'minitest'
require 'list'
require 'pry'
require 'node'

class ListTest < Minitest::Test
  def setup
    @list = List.new
    @node = Node.new

    # context for minitest
    @node_1 = Node.new("Hi!")
    @node_2 = Node.new("Hello!")
  end

  def test_can_create_instance
    assert_instance_of List, @list
  end

  def test_returns_nil_for_head_if_there_is_no_nodes
    assert_nil @list.head
  end

  def test_can_add_a_node_to_an_empty_list
    assert @list.append(@node)
  end

  def test_head_points_to_the_only_node_added
    @list.append(@node)

    assert_equal @node, @list.head
  end

  def test_head_points_to_the_first_node_when_two_nodes_added
    # ask about context for minitest
    @list.append(@node_1)
    @list.append(@node_2)

    assert_equal @node_1, @list.head
  end
end
