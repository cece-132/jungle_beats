require "./lib/linked_list"

RSpec.describe LinkedList do
  describe 'exists' do
    it 'exists and has attributes' do
      list = LinkedList.new

      expect(list).to be_a LinkedList
      expect(list.head).to be_nil
    end

    it 'keeps count of the length of the list' do
      list = LinkedList.new

      expect(list.count).to eq 0
    end
  end

  describe '#append(data)' do
    it 'adds a node to the head' do
      list = LinkedList.new

      list.append("doop")

      expect(list.head).to be_a Node
      expect(list.head.next_node).to be_nil
    end

    it 'can add multiple nodes to a list' do
      list = LinkedList.new

      node_a = list.append("doop")
      node_b = list.append("boo")

      expect(list.head).to eq node_a
      expect(list.head.next_node).to eq node_b
    end
  end

  describe '#count' do
    it 'can count the length of the list' do
      list = LinkedList.new

      node_a = list.append("doop")

      expect(list.count).to eq 1
    end

    it 'can count the length of the list part 2' do
      list = LinkedList.new

      node_a = list.append("doop")
      node_b = list.append("boo")
      node_b = list.append("win")

      expect(list.count).to eq 3
    end
  end
end