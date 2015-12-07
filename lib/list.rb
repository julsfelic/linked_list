require 'pry'

class List
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_node(node)
    @head = node
  end
end
