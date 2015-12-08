require 'minitest'
require 'list'
require 'pry'
require 'node'

class ListTest < Minitest::Test
  # refactor tests!
  def setup
    @list = List.new
    @node = Node.new

    # context for minitest
    @node_1 = Node.new("Hi!")
    @node_2 = Node.new("Hello!")
    @node_3 = Node.new("Wassup!")
    @node_4 = Node.new("Yo!")
  end

  def test_can_create_instance
    assert_instance_of List, @list
  end

  def test_returns_nil_for_head_if_there_is_no_nodes
    assert_nil @list.head
  end

  def test_can_append_a_node_to_an_empty_list
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

  def test_can_prepend_a_node
    @list.append(@node_1)
    @list.prepend(@node_2)

    assert_equal @node_2, @list.head
    assert_equal @node_1, @node_2.link
    assert_nil   @node_1.link
  end

  def test_can_prepend_a_node_with_multiple_nodes
    @list.append(@node_1)
    @list.append(@node_2)
    @list.prepend(@node_3)

    assert_equal @node_3, @list.head
    assert_equal @node_1, @node_3.link
    assert_equal @node_2, @node_1.link
    assert_nil   @node_2.link
  end

  def test_can_insert_a_node_at_the_zero_position
    @list.append(@node_1)
    @list.append(@node_2)
    @list.append(@node_3)

    @list.insert(@node_4, 0)

    assert_equal @node_1, @node_4.link
    assert_equal @node_2, @node_1.link
  end

  def test_can_insert_a_node_at_a_position
    @list.append(@node_1)
    @list.append(@node_2)
    @list.append(@node_3)

    @list.insert(@node_4, 1)

    assert_equal @node_4, @node_1.link
    assert_equal @node_2, @node_4.link
    assert_equal @node_3, @node_2.link
    assert_nil   @node_3.link
  end

  def test_returns_true_if_a_element_exist_in_the_list
    @list.append(@node_1)
    @list.append(@node_2)
    @list.append(@node_3)

    return_value = @list.include?("Hello!")

    assert_equal true, return_value
  end

  def test_returns_false_if_a_element_does_not_exist_in_the_list
    @list.append(@node_1)
    @list.append(@node_2)
    @list.append(@node_3)

    return_value = @list.include?("HiHiHiHi")

    assert_equal false, return_value
  end
end
