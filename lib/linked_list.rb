require 'pry'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = head
  end

  def append(data)
    current_node = Node.new(data)
    if @head.nil?
      @head = current_node
    elsif data != current_node && current_node.next_node.nil?
      @head.append(data)
    end
  end

end