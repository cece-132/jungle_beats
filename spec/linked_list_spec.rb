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

  describe 'insert' do
    it 'can place a node in a specific place' do
      list = LinkedList.new

      node_a = list.append("doop")
      node_b = list.append("boo")
      node_c = list.prepend("win")
      node_d = list.insert(1, "shoo")

      expect(list.to_string).to eq "win shoo doop boo"
    end

    it 'changes position to list count if position int is greater than count' do
      list = LinkedList.new

      node_a = list.append("doop")
      node_b = list.append("boo")
      node_c = list.prepend("win")
      node_d = list.insert(10, "shoo")

      expect(list.to_string).to eq "win doop boo shoo"
    end
  end
  
  describe "#find(index, num_of_elements)" do
    it 'returns the value at the index and the num_of_elements after it' do
      list = LinkedList.new

      node_a = list.append("deep")
      node_b = list.append("woo")
      node_c = list.append("shi")
      node_d = list.append("shu")
      node_e = list.append("blop")
      
      expect(list.to_string).to eq "deep woo shi shu blop"

      expect(list.find(2,1)).to eq "shi"
    end

    it 'returns multiple elements when asked' do
      list = LinkedList.new

      node_a = list.append("deep")
      node_b = list.append("woo")
      node_c = list.append("shi")
      node_d = list.append("shu")
      node_e = list.append("blop")
      
      expect(list.to_string).to eq "deep woo shi shu blop"

      expect(list.find(1,3)).to eq "woo shi shu"
    end
  end

  describe '#includes?(data)' do
    it 'finds if data is present on list' do
      list = LinkedList.new

      node_a = list.append("deep")
      node_b = list.append("woo")
      node_c = list.append("shi")
      node_d = list.append("shu")
      node_e = list.append("blop")

      expect(list.includes?("deep")).to eq true
      expect(list.includes?("dep")).to eq false
    end
  end

  describe '#pop' do
    it ''
  end
end