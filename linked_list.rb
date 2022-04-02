class Node 
    attr_accessor :value, :next_node
    def initialize(value, next_node)
        @value = value
        @next_node = nil
    end
end

a = Node.new(1,4)
p a