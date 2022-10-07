require "./lib/node"
require "./lib/linked_list"

RSpec.describe Node do
  describe 'Exists' do
    it 'exists and has attributes' do
      node = Node.new("plop")

      expect(node).to be_a Node
      expect(node.data).to eq "plop"
      expect(node.next_node).to be_nil
    end
  end

  describe '#append(data)' do
    it 'can assign a node to next_node value' do
      node = Node.new("plop")

      new_node = node.append("boo")

      expect(node.next_node).to eq new_node
    end
  end
end