require "./lib/jungle_beat"

RSpec.describe JungleBeat do
  describe 'existance' do
    it 'exists and has attributes' do
      jb = JungleBeat.new

      expect(jb).to be_a JungleBeat
      expect(jb.list).to be_a LinkedList
      expect(jb.list.head).to be_nil
    end
  end

  describe '#append(data)' do
    it 'takes the data and turns them into nodes on the linked list' do
      jb = JungleBeat.new

      jb.append("deep doo ditt")
      jb.append("woo hoo shu")

      expect(jb.list.head.data).to eq "deep"
      expect(jb.list.head.next_node.data).to eq "doo"
      expect(jb.count).to eq 6
    end
  end
end