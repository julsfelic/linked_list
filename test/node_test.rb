require 'minitest'
require 'node'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new
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
end
