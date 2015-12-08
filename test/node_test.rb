require 'minitest'
require 'node'
require 'list'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new
    @list = List.new

    @node_1 = Node.new("Hi!")
    @node_2 = Node.new("Hello!")
    @node_3 = Node.new("Wassup")
  end
  #
  def test_can_create_instance
    node = Node.new

    assert_instance_of Node, node
  end

  def test_returns_nil_for_element
    assert_nil @node.element
  end

  def test_returns_nil_for_link
    assert_nil @node.link
  end

  def test_can_be_assigned_an_element
    assert_equal "Hi!", @node_1.element
  end

  def test_link_remains_nil_when_node_is_only_node_in_list
    @list.append(@node)

    assert_nil @node.link
  end

  def test_can_assign_an_element_when_initialized
    node = Node.new("Hi!")

    assert_equal "Hi!", node.element
  end

  def test_first_node_link_points_to_second_node
    @list.append(@node_1)
    @list.append(@node_2)

    assert_equal @node_2, @node_1.link
  end

  def test_second_node_remains_nill_when_linked_to_another_node
    @list.append(@node_1)
    @list.append(@node_2)

    assert_nil @node_2.link
  end

  def test_nodes_point_to_next_node_in_list
    @list.append(@node_1)
    @list.append(@node_2)
    @list.append(@node_3)

    assert_equal @node_2, @node_1.link
    assert_equal @node_3, @node_2.link
  end
end
