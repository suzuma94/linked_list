

require './lib/linked_list'

describe LinkedList do 
    describe "#append(value)" do
        it "expecting the given value as a string(also prepend)" do
            list = LinkedList.new
            list.append(31)
            list.prepend(30)
            expect(list.to_s).to eql("(30) -> (31) -> nil")
        end
    end
    describe "#tail" do
        it "returns the last node" do
            list = LinkedList.new
            list.append(1)
            list.append(2)
            node = list.append(3)
            expect(list.tail).to eql(node)
        end
    end
    describe "#size" do
        it "returning number of nodes" do
            list = LinkedList.new
            list.append(30)
            list.prepend(40)
            expect(list.size).to eql(2)
        end
    end
    describe "#at(index)" do
        it "return a node at the given index" do
            list = LinkedList.new
            node = list.append(31)
            node2 = list.append(32)
            expect(list.at(0)).to eql(node)
            expect(list.at(1)).to eql(node2)
        end
    end
    describe "#pop" do
        it "removes the last node" do
            list = LinkedList.new
            list.append(30)
            list.prepend(31)
            list.pop
            expect(list.to_s).to eql("(31) -> nil")
        end
    end
    describe "#contains?(value)" do
        it "checking if there is a node with a certain value" do
            list = LinkedList.new
            list.append(30)
            list.append(31)
            list.pop
            list.append(49)
            expect(list.contains?(31)).to eql(false)
            expect(list.contains?(49)).to eql(true)
        end
    end
    describe "#find(value)" do
        it "returns the index of the node containing value" do
            list = LinkedList.new
            list.append(30)
            list.append(31)
            list.append(32)
            expect(list.find(31)).to eql(1)
        end
    end
    describe "#to_s" do
        it "prints out all the nodes in string" do
            list = LinkedList.new
            list.append(30)
            list.append(31)
            list.append(32)
            list.pop
            expect(list.to_s).to eql("(30) -> (31) -> nil")
        end
    end
    describe "insert_at(value, index)" do
        it "insert a node with the given value and index" do
            list = LinkedList.new
            list.append(30)
            list.append(31)
            list.append(32)
            list.append(33)
            list.pop
            node = list.insert_at(36, 2)
            expect(list.at(2)).to eql(node)
        end
    end
    describe "#remove_at(index)" do
        it "removes a node with the given index" do
            list = LinkedList.new
            list.append(30)
            list.append(32)
            node = list.append(34)
            list.remove_at(1)
            expect(list.at(1)).to eql(node)
        end
    end
end