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
    elsif !@head.data.nil?
      @head.next_node = Node.new(sound).data
    end
  end

  def count
    cnt = 0
    if @head.nil?
      return cnt
    elsif !@head.data.nil? && @head.next_node.nil?
      return cnt + 1
    elsif !@head.data.nil? && !@head.next_node.nil?
      return cnt + 2
    end
  end

  def to_string
    @array = []
    current_sound = @head
    if current_sound
      @array << current_sound.data
      until current_sound.next_node.nil?
        current = current_sound.next_node
        @array << current_sound.data
      end
      @array.join(" ")
    else
      ""
    end
  end


end