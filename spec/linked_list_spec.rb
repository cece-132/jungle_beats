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
end