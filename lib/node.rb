class Node
  attr_accessor :link
  attr_reader :element, :link

  def initialize(element = nil)
    @element = element
    @link = nil
  end
end
