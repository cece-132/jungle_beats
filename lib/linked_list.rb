require 'pry'
require "./lib/node"

class LinkedList
  attr_reader :head
  attr_accessor :count
  
  def initialize
    @head = head
    @count = 0
  end

  def append(data)
    current_node = Node.new(data)
    if @head.nil?
      @count += 1
      @head = current_node
    elsif data != current_node && current_node.next_node.nil?
      @count += 1
      @head.append(data)
    end
  end

  def to_string
    current = @head
    @array = []
    if current
      @array << current.data
      until current.next_node.nil?
        current = current.next_node
        @array << current.data
      end
      @array.join(" ")
    end
  end

  def prepend(data)
    @count += 1
    next_node = @head
    @head = Node.new(data)
    @head.append_node(next_node)
  end

  def insert(position, data)
    current = @head
    if position <= @count
      (position - 1).times do # used the -1 becayse
        current = current.next_node
      end
    else
      position = @count
      (position - 1).times do # used the -1 becayse
        current = current.next_node
      end
    end
    next_node = current.next_node
    node = Node.new(data)

    node.append_node(next_node)
    current.append_node(node)
  end

end