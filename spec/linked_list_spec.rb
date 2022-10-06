require './lib/linked_list'

RSpec.describe LinkedList do
  describe 'Iteration 1' do
    it 'exist and has attributes' do
      list = LinkedList.new

      expect(list).to be_a LinkedList
      expect(list.head).to be_nil
    end

    it '#append(sound)' do
      list = LinkedList.new

      list.append("doop")

      expect(list.head).to be_a Node
      expect(list.head.data).to eq "doop"
      expect(list.head.next_node).to be_nil
    end

    it '#count' do
      list = LinkedList.new
      list.append("doop")
      expect(list.count).to eq 1
    end

    it '#to_string'do
      list = LinkedList.new
      list.append("doop")

      expect(list.to_string).to eq "doop"
    end
  end

  describe 'Iteration 2' do
    it 'can add mulitiple sounds' do
      list = LinkedList.new

      expect(list.head).to be_nil

      sound = list.append("doop")

      expect(list.head).to eq sound
      expect(list.head.next_node).to be_nil

      sound_2 = list.append("deep")

      expect(list.head.next_node).to eq "deep"
      expect(list.count).to eq 2
      expect(list.to_string).to eq "doop deep"
    end
  end
end