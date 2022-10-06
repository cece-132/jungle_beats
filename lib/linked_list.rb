require 'pry'
require "./lib/node.rb"

class LinkedList
  attr_reader :head, :data
  
  def initialize
    @head = nil  
  end

  def append(sound)
    current_sound = sound
    if @head.nil?
      @head = Node.new(sound)
    end
  end

  def count
    if @head.nil?
      return 0
    else
      return 1
    end
  end

  def to_string
    head.data
  end

end