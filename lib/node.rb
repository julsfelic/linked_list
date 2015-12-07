class Node
  attr_reader :element, :link

  def initialize
    @element = nil
    @link = nil
  end

  def add_element(element)
    @element = element
  end
end
