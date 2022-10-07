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
      node_c = list.append("win")

      expect(list.count).to eq 3
    end
  end

  describe '#to_string' do
    it 'returns the data of a node as a string' do
      list = LinkedList.new

      node_a = list.append("doop")

      expect(list.to_string).to eq "doop"
    end

    it 'adds multiple nodes into a single string' do
      list = LinkedList.new

      node_a = list.append("doop")
      node_b = list.append("boo")
      node_c = list.append("win")
      expect(list.to_string).to eq "doop boo win"
    end
  end

  describe '#prepend' do
    it 'adds a node to the beginning of a list' do
      list = LinkedList.new

      node_a = list.append("doop")
      node_b = list.append("boo")

      node_c = list.prepend("win")

      expect(list.to_string).to eq "win doop boo"
      expect(list.count).to eq 3
    end
  end
end