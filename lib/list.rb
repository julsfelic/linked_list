class List
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_node(node)
    if no_head_node?
      set_head_node(node)
    else # set 1st nodes link equal to second node
      # check if head is nill, if not check that nodes link
      find_node_with_nil_link(node)
    end
  end

  def no_head_node?
    head.nil?
  end

  def set_head_node(node)
    @head = node
  end

  def set_node_link(new_node, node=@head)
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
