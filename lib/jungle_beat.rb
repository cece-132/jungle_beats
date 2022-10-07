require "./lib/linked_list"

class JungleBeat < LinkedList
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    array = data.split
    array.each do |data|
      @list.append(data)
    end
  end

  def count
    @list.count
  end
end
