require 'minitest'
require 'list'

class ListTest < Minitest::Test
  def setup
    @list = List.new
  end

  def test_can_create_instances
    assert_instance_of List, @list
  end

  def test_returns_nil_for_head_if_there_is_no_nodes
    assert_nil @list.head
  end
end
