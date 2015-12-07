require 'minitest'
require 'node'
require 'list'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new
    @list = List.new
  end

  def test_can_create_instance
    assert_instance_of Node, @node
  end

  def test_returns_nil_for_element
    assert_nil @node.element
  end

  def test_returns_nil_for_link
    assert_nil @node.link
  end

  def test_can_be_assigned_an_element
    @node.add_element("Hi!")

    assert_equal "Hi!", @node.element
  end

  def test_link_remains_nil_when_node_is_only_node_in_list
    @list.add_node(@node)

    assert_nil @node.link
  end
end
