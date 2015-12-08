require 'pry'
require_relative 'node'

class List
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(node)
    if no_head_node?
      set_head_node(node)
    else
      find_node_with_nil_link(node)
    end
  end

  def prepend(new_node, current_node=head, position=0, previous_node=nil)
    new_node.link = current_node
    previous_node.link = new_node unless previous_node.nil?
    set_head_node(new_node) if position == 0
  end

  def insert(new_node, position)
    go_to_position_of_node(new_node, position)
  end

  def include?(element)
    node = head
    has_node_element?(element, node)
  end

  def pop
    remove_last_node
  end

  def count
    count_nodes(head)
  end

  def count_nodes(node, count=1)
    return 0 if no_head_node?
    if node_link_is_nil?(node)
      count
    else
      count += 1
      count_nodes(node.link, count)
    end
  end

  def remove_last_node(current_node = head, previous_node=nil)
    if node_link_is_nil?(current_node)
      previous_node.link == nil unless node_is_nil?(previous_node)
      current_node
    else
      remove_last_node(current_node.link, current_node)
    end
  end

  def node_link_is_nil?(node)
    node.link == nil
  end

  def has_node_element?(element, node)
    return false if node_is_nil?(node)
    if node.element == element
      true
    else
      next_node = node.link
      has_node_element?(element, next_node)
    end
  end

  def node_is_nil?(node)
    node.nil?
  end

  def go_to_position_of_node(new_node, position, current_position=0, current_node=head, previous_node=nil)
    if current_position == position
      prepend(new_node, current_node, current_position, previous_node)
    else
      current_position += 1
      previous_node = current_node
      current_node = current_node.link
      go_to_position_of_node(new_node, position, current_position, current_node, previous_node)
    end
  end

  def no_head_node?
    head.nil?
  end

  def set_head_node(node)
    @head = node
  end

  def set_node_link(new_node, node)
    node.link = new_node
  end

  def find_node_with_nil_link(new_node, node=@head)
    if node.link.nil?
      set_node_link(new_node, node)
    else
      node = node.link
      find_node_with_nil_link(new_node, node)
    end
  end
end

if __FILE__ == $0
  node_1 = Node.new("Hi")
  node_2 = Node.new("Hello")
  node_3 = Node.new("Wassup")
  node_4 = Node.new("Howdy")

  list = List.new

  list.append(node_1)
  list.append(node_2)
  list.append(node_3)
  list.append(node_4)

  p list.head.link.element
  p node_2.link.element
  p node_3.link.element
  p node_4.link
end
