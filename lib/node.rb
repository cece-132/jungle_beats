class Node

  attr_accessor :next_node, :data

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def append(data)
    if next_node.nil?
      @next_node = Node.new(data)
    else
      @next_node.append(data)
    end
  end

  def append_node(data)
      @next_node = data
  end

end